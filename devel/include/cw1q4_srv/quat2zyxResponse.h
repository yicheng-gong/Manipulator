// Generated by gencpp from file cw1q4_srv/quat2zyxResponse.msg
// DO NOT EDIT!


#ifndef CW1Q4_SRV_MESSAGE_QUAT2ZYXRESPONSE_H
#define CW1Q4_SRV_MESSAGE_QUAT2ZYXRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cw1q4_srv
{
template <class ContainerAllocator>
struct quat2zyxResponse_
{
  typedef quat2zyxResponse_<ContainerAllocator> Type;

  quat2zyxResponse_()
    {
    }
  quat2zyxResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::cw1q4_srv::quat2zyxResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cw1q4_srv::quat2zyxResponse_<ContainerAllocator> const> ConstPtr;

}; // struct quat2zyxResponse_

typedef ::cw1q4_srv::quat2zyxResponse_<std::allocator<void> > quat2zyxResponse;

typedef boost::shared_ptr< ::cw1q4_srv::quat2zyxResponse > quat2zyxResponsePtr;
typedef boost::shared_ptr< ::cw1q4_srv::quat2zyxResponse const> quat2zyxResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cw1q4_srv::quat2zyxResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cw1q4_srv::quat2zyxResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace cw1q4_srv

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cw1q4_srv::quat2zyxResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cw1q4_srv::quat2zyxResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cw1q4_srv::quat2zyxResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cw1q4_srv::quat2zyxResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cw1q4_srv::quat2zyxResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cw1q4_srv::quat2zyxResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cw1q4_srv::quat2zyxResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::cw1q4_srv::quat2zyxResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::cw1q4_srv::quat2zyxResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cw1q4_srv/quat2zyxResponse";
  }

  static const char* value(const ::cw1q4_srv::quat2zyxResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cw1q4_srv::quat2zyxResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"\n"
;
  }

  static const char* value(const ::cw1q4_srv::quat2zyxResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cw1q4_srv::quat2zyxResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct quat2zyxResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cw1q4_srv::quat2zyxResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::cw1q4_srv::quat2zyxResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // CW1Q4_SRV_MESSAGE_QUAT2ZYXRESPONSE_H
