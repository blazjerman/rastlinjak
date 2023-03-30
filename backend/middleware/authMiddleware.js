const jwt = require('jsonwebtoken');
const User = require('../models/User');

const protect = (allowedRoles) => {
  return async (req, res, next) => {
    let token;
  
    if (req.headers.authorization && req.headers.authorization.startsWith('Bearer')) {
      try {
        token = req.headers.authorization.split(' ')[1];
        const decoded = jwt.verify(token, process.env.JWT_SECRET);
        let user = await User.findOne({
          where: {id: decoded}
        });

        if (allowedRoles && !allowedRoles.includes(user.role)) {
          res.status(401).json({
            message: "You don't have permission to perform this operation"
          });
          // cannot throw error here since it is going to be cached and thrown as "Not authorized"
          return;
        }
        
        delete user.dataValues.password;
        req.user = user;
  
        next();
  
      } catch (err) {
        console.log(err);
        // return errorHandler({err: 'Not authorized', status: 401});
        res.status(401).json({
          message: "Not authorized"
        });
        throw new Error('Not authorized')
      }
    }
  
    if (!token) {
      // return errorHandler({err: 'No token', status: 401});
      res.status(401).json({
        message: "Not authorized, no token"
      })
      throw new Error('Not authorized, no token')
    }
  };
}


module.exports = protect;