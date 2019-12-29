#!/usr/bin/env python3 

from __future__ import absolute_import, print_function

import sys
import argparse
import socket
import logging
from datetime import datetime

import can
from can import Bus, BusState, Logger

import paho.mqtt.client as mqtt

base_topic="house"

coil_topic = "coil"
light_topic = "light"

coil_map = { 
  'EZ': [ 0x03, 0x01 ],
  'K': [ 0x03, 0x02 ],
  'WZ1': [ 0x02, 0x01 ],
  'WZ2': [ 0x02, 0x02 ],
  'TER': [ 0x03, 0x03 ],
  'FE': [ 0x03, 0x07 ],
  'TRE': [ 0x02, 0x03 ],
  'FO': [ 0x01, 0x03 ],
  'TRO': [ 0x01, 0x07 ],
  'KI1': [ 0x01, 0x06 ],
  'KI2': [ 0x01, 0x04 ],
  'SCH': [ 0x01, 0x08 ],
  'B1': [ 0x01, 0x01 ],
  'B2': [ 0x01, 0x02 ],
  'ROL_EZ_G_DOWN': [0x03, 0x05, -1],
  'ROL_EZ_G_UP': [0x03,0x04, -1],
  'ROL_EZ_N_DOWN': [0x03, 0x06, -2],
  'ROL_EZ_N_UP': [0x03,0x08, -2],
  'EG1': [ 0x02, 0x09 ],
  'EG2': [ 0x03, 0x09 ],
  'OG': [ 0x01, 0x09 ],
  'ALL': [ 0xFF, 0x09 ],
}

cmd_map = {
  'off': 0,
  '0': 0,
  'on': 1,
  '1': 1,
  'value': 2,
  'toggle': 3
}
  

def decon(msg_id):
   msg_prio=msg_id>>26
   msg_type=(msg_id>>24) & 0x03
   msg_dst=(msg_id>>16) & 0xFF
   msg_src=(msg_id>>8) & 0xFF
   msg_cmd=msg_id & 0xFF
#   print("msg_id: ", hex(msg_id), "prio: ", hex(msg_prio),"type: ", hex(msg_type)," dst: ", hex(msg_dst)," src: ", hex(msg_src)," cmd: ",hex(msg_cmd))
   return [msg_prio, msg_type, msg_dst, msg_src, msg_cmd]

def con(msg_dst,msg_cmd,msg_prio=3,msg_type=0,msg_src=11, ):
   msg_id=(msg_prio<<26) + \
   ((msg_type&0x03)<<24) +\
   ((msg_dst&0xFF)<<16) +\
   ((msg_src&0xFF)<<8) +\
   (msg_cmd&0xFF)
   print("Constructed ID: "+hex(msg_id))
   return msg_id

def coil_action(sub_topic, payload, bus)
    msg_cmd=cmd_map[m_decode]
    sub=msg.topic[len(base_topic)+len(coil_topic)+2:]
    coil=sub
    print("substring: "+coil)
    try:
      addr = coil_map[coil]

      print("Addr:", addr)
      if msg_cmd == 2:
        msg_data.append(value)
      print("msg_cmd",msg_cmd, len(addr))
      if msg_cmd is not 0 and len(addr) is 3:
        for key, value in coil_map.items():
          print("checking: ", key)
          if len(value) is 3: 
            print("value_2 is", value[2], "Addr: ", addr[2])   
            if value[2] is addr[2]:
              msg_id=con(msg_dst=value[0],msg_cmd=0)
              msg_data=[value[1]] 
              m = can.Message(arbitration_id=msg_id,
                  data=msg_data,
                  extended_id=True)
              try:
                local_bus.send(m)
              except BaseException as e:
                logging.error("Error sending can message {%s}: %s" % (m, e))
              print("data sent to CAN",m)
  
      msg_id=con(msg_dst=addr[0],msg_cmd=msg_cmd)
      msg_data=[addr[1]] 
             
      m = can.Message(arbitration_id=msg_id,
          data=msg_data,
          extended_id=True)
      try:
          bus.send(m)
      except BaseException as e:
          logging.error("Error sending can message {%s}: %s" % (m, e))
      print("data sent to CAN",m)
    except BaseException as e:
        logging.error("Error finding coil %s" % (coil))

   

def on_subscribe(self, mqttc, obj, mid, granted_qos):
    print("Subscribed: "+str(mid)+" "+str(granted_qos))

def on_connect(mcp_mqtt, userdata, flags, rc):
    print("Connected with result code "+str(rc))

    # Subscribing in on_connect() means that if we lose the connection and
    # reconnect then subscriptions will be renewed.
    mcp_mqtt.subscribe(base_topic+"/#", 0)
    print("Subscribed to: "+base_topic+"/+")

def on_message_coil(mcp_mqtt, bus,  msg):
    print("data Received topic: ", msg.topic)
    m_decode=str(msg.payload.decode("utf-8","ignore"))
    print("data Received",m_decode)
    msg_cmd=cmd_map[m_decode]
    sub=msg.topic[len(base_topic)+len(coil_topic)+2:]
    coil=sub
    print("substring: "+coil)
    try:
      addr = coil_map[coil]

      print("Addr:", addr)
      if msg_cmd == 2:
        msg_data.append(value)
      print("msg_cmd",msg_cmd, len(addr))
      if msg_cmd is not 0 and len(addr) is 3:
        for key, value in coil_map.items():
          print("checking: ", key)
          if len(value) is 3: 
            print("value_2 is", value[2], "Addr: ", addr[2])   
            if value[2] is addr[2]:
              msg_id=con(msg_dst=value[0],msg_cmd=0)
              msg_data=[value[1]] 
              m = can.Message(arbitration_id=msg_id,
                  data=msg_data,
                  extended_id=True)
              try:
                local_bus.send(m)
              except BaseException as e:
                logging.error("Error sending can message {%s}: %s" % (m, e))
              print("data sent to CAN",m)
  
      msg_id=con(msg_dst=addr[0],msg_cmd=msg_cmd)
      msg_data=[addr[1]] 
             
      m = can.Message(arbitration_id=msg_id,
          data=msg_data,
          extended_id=True)
      try:
          bus.send(m)
      except BaseException as e:
          logging.error("Error sending can message {%s}: %s" % (m, e))
      print("data sent to CAN",m)
    except BaseException as e:
        logging.error("Error finding coil %s" % (coil))
      
def on_message_light(mcp_mqtt, obj, msg):
    print("TBD",m)

def on_message(mcp_mqtt, obj, msg):
    # This callback will be called for messages that we receive that do not
    # match any patterns defined in topic specific callbacks, i.e. in this case
    print(msg.topic + " " + str(msg.qos) + " " + str(msg.payload))


def main():
    verbosity = 2

    logging_level_name = ['critical', 'error', 'warning', 'info', 'debug', 'subdebug'][min(5, verbosity)]
    can.set_logging_level(logging_level_name)

    can_filters = []
    config = {"can_filters": can_filters, "single_handle": True}
    config["interface"] = "socketcan"
    config["bitrate"] = 125000
    bus = Bus("can1", **config)

    print('Connected to {}: {}'.format(bus.__class__.__name__, bus.channel_info))
    print('Can Logger (Started on {})\n'.format(datetime.now()))

    mcp_mqtt = mqtt.Client()
    mcp_mqtt.on_connect = on_connect
#    mcp_mqtt.on_message = on_message
    mcp_mqtt.user_data_set(bus)
    mcp_mqtt.loop_start()
    
    mcp_mqtt.message_callback_add(base_topic+"/"+coil_topic+"/+", on_message_coil)
    mcp_mqtt.message_callback_add(base_topic+"/"+light_topic+"/+", on_message_light)
    mcp_mqtt.on_message = on_message
    mcp_mqtt.connect("mcp", 1883, 60)

    mcp_mqtt.loop_start()
    #mcp_mqtt.loop_forever()


    try:
      while True:
        msg = bus.recv(1)
        if msg is not None:
          de=decon(msg.arbitration_id)
          m= { "prio": hex(de[0]), "type": hex(de[1]), "dst": hex(de[2]), "src": hex(de[3]), "cmd": hex(de[4]), "action": hex(msg.data[0]) }
          if de[2]==0 and de[4] == 6:
            print("received state: ", hex(de[3]), hex(msg.data[0]), hex(msg.data[1]))   
            for key in coil_map:
              address=coil_map[key]
              if address[0] == de[3] and address[1] == msg.data[0]+1:
                 print("coil/"+key+" changed to "+str(msg.data[1]))
                 mcp_mqtt.publish(base_topic+"/"+coil_topic+"/"+key+"/state", msg.data[1] , retain=1)	
    except KeyboardInterrupt:
        pass
    finally:
        bus.shutdown()

if __name__ == "__main__":
    main()
