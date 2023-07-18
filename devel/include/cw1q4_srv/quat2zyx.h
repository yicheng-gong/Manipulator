// Generated by gencpp from file cw1q4_srv/quat2zyx.msg
// DO NOT EDIT!


#ifndef CW1Q4_SRV_MESSAGE_QUAT2ZYX_H
#define CW1Q4_SRV_MESSAGE_QUAT2ZYX_H

#include <ros/service_traits.h>


#include <cw1q4_srv/quat2zyxRequest.h>
#include <cw1q4_srv/quat2zyxResponse.h>


namespace cw1q4_srv
{

struct quat2zyx
{

typedef quat2zyxRequest Request;
typedef quat2zyxResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct quat2zyx
} // namespace cw1q4_srv


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cw1q4_srv::quat2zyx > {
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::cw1q4_srv::quat2zyx&) { return value(); }
};

template<>
struct DataType< ::cw1q4_srv::quat2zyx > {
  static const char* value()
  {
    return "cw1q4_srv/quat2zyx";
  }

  static const char* value(const ::cw1q4_srv::quat2zyx&) { return value(); }
};


// service_traits::MD5Sum< ::cw1q4_srv::quat2zyxRequest> should match
// service_traits::MD5Sum< ::cw1q4_srv::quat2zyx >
template<>
struct MD5Sum< ::cw1q4_srv::quat2zyxRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cw1q4_srv::quat2zyx >::value();
  }
  static const char* value(const ::cw1q4_srv::quat2zyxRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cw1q4_srv::quat2zyxRequest> should match
// service_traits::DataType< ::cw1q4_srv::quat2zyx >
template<>
struct DataType< ::cw1q4_srv::quat2zyxRequest>
{
  static const char* value()
  {
    return DataType< ::cw1q4_srv::quat2zyx >::value();
  }
  static const char* value(const ::cw1q4_srv::quat2zyxRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cw1q4_srv::quat2zyxResponse> should match
// service_traits::MD5Sum< ::cw1q4_srv::quat2zyx >
template<>
struct MD5Sum< ::cw1q4_srv::quat2zyxResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cw1q4_srv::quat2zyx >::value();
  }
  static const char* value(const ::cw1q4_srv::quat2zyxResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cw1q4_srv::quat2zyxResponse> should match
// service_traits::DataType< ::cw1q4_srv::quat2zyx >
template<>
struct DataType< ::cw1q4_srv::quat2zyxResponse>
{
  static const char* value()
  {
    return DataType< ::cw1q4_srv::quat2zyx >::value();
  }
  static const char* value(const ::cw1q4_srv::quat2zyxResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CW1Q4_SRV_MESSAGE_QUAT2ZYX_H
