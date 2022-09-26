//import { resolver } from "graphql-sequelize";
//import { GraphQLSchema } from 'graphql';
import {sequelize} from "../config/db";
const { DataTypes } = require('sequelize');

const User = sequelize.define('User', {
    id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        unique: true,
        primaryKey: true
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false
    },
    email: {
      type: DataTypes.STRING,
      allowNull: false
    },
    passwd: {
      type: DataTypes.STRING,
      allowNull: false
    },
    created_at: {
        type: DataTypes.DATE,
        allowNull: false
    },
    updated_at: {
        type: DataTypes.DATE,
        allowNull: false
    }
},
    {
        timestamps: false,
        tableName: 'users',
    }
);

export {
    User
}

//DbCheck();


//resolver(SequelizeModel[, options]);