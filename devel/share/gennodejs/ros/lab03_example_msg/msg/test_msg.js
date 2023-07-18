// Auto-generated. Do not edit!

// (in-package lab03_example_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class test_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rotx = null;
      this.roty = null;
      this.rotz = null;
    }
    else {
      if (initObj.hasOwnProperty('rotx')) {
        this.rotx = initObj.rotx
      }
      else {
        this.rotx = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('roty')) {
        this.roty = initObj.roty
      }
      else {
        this.roty = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('rotz')) {
        this.rotz = initObj.rotz
      }
      else {
        this.rotz = new std_msgs.msg.Float64();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type test_msg
    // Serialize message field [rotx]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.rotx, buffer, bufferOffset);
    // Serialize message field [roty]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.roty, buffer, bufferOffset);
    // Serialize message field [rotz]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.rotz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type test_msg
    let len;
    let data = new test_msg(null);
    // Deserialize message field [rotx]
    data.rotx = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [roty]
    data.roty = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [rotz]
    data.rotz = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lab03_example_msg/test_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1a848a7384d8bb575b0a921bed0b0de3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float64 rotx
    std_msgs/Float64 roty
    std_msgs/Float64 rotz
    
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new test_msg(null);
    if (msg.rotx !== undefined) {
      resolved.rotx = std_msgs.msg.Float64.Resolve(msg.rotx)
    }
    else {
      resolved.rotx = new std_msgs.msg.Float64()
    }

    if (msg.roty !== undefined) {
      resolved.roty = std_msgs.msg.Float64.Resolve(msg.roty)
    }
    else {
      resolved.roty = new std_msgs.msg.Float64()
    }

    if (msg.rotz !== undefined) {
      resolved.rotz = std_msgs.msg.Float64.Resolve(msg.rotz)
    }
    else {
      resolved.rotz = new std_msgs.msg.Float64()
    }

    return resolved;
    }
};

module.exports = test_msg;
