package WWW::SwaggerClient::Object::Measurement;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use base "WWW::SwaggerClient::Object::BaseObject";

#
#
#
#NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
#

my $swagger_types = {
      'variable' => 'string',
      'source' => 'string',
      'timestamp' => 'int',
      'value' => 'double',
      'unit' => 'string',
      'note' => 'string'
};

my $attribute_map = {
      'variable' => 'variable',
      'source' => 'source',
      'timestamp' => 'timestamp',
      'value' => 'value',
      'unit' => 'unit',
      'note' => 'note'
};

# new object
sub new { 
    my ($class, %args) = @_; 
    my $self = { 
        #ORIGINAL Name of the variable for which we are creating the measurement records
        'variable' => $args{'variable'}, 
        #Application or device used to record the measurement values
        'source' => $args{'source'}, 
        #Timestamp for the measurement event in epoch time
        'timestamp' => $args{'timestamp'}, 
        #Measurement value
        'value' => $args{'value'}, 
        #Unit of Measurement
        'unit' => $args{'unit'}, 
        #Optional note supplied with the measurement. Can be up to 255 characters in length.
        'note' => $args{'note'}
    }; 

    return bless $self, $class; 
}  

# get swagger type of the attribute
sub get_swagger_types {
  return $swagger_types;
}

# get attribute mappping
sub get_attribute_map {
  return $attribute_map;
}

1;
