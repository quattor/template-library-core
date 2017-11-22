declaration template quattor/types/sensors;

type structure_sensor = {
    "name" : string with match(SELF, '^.+$')
    "threshold" : long
    "unit" : string with match(SELF, '^\S+$')
};

type structure_sensor_temperature = {
    include structure_sensor
    "unit" : string = "C"
};

type structure_sensor_voltage = {
    include structure_sensor
    "unit" : string = "V"
};

type structure_sensor_current = {
    include structure_sensor
    "unit" : string = "A"
};

type structure_sensor_power = {
    include structure_sensor
    "unit" : string = "W"
};

type structure_sensor_fanspeed = {
    include structure_sensor
    "unit" : string = "RPM"
};

type structure_sensor_types = {
    "temperature" ? structure_sensor_temperature{}
    "voltage" ? structure_sensor_voltage{}
    "current" ? structure_sensor_current{}
    "power" ? structure_sensor_power{}
    "fanspeed" ? structure_sensor_fanspeed{}
};
