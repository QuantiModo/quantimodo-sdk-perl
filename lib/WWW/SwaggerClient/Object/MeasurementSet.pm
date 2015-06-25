package WWW::SwaggerClient::Object::MeasurementSet;

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
      'measurements' => 'ARRAY[ValueObject]',
      'name' => 'string',
      'source' => 'string',
      'category' => 'string',
      'combination_operation' => 'string',
      'unit' => 'string'
};

my $attribute_map = {
      'measurements' => 'measurements',
      'name' => 'name',
      'source' => 'source',
      'category' => 'category',
      'combination_operation' => 'combinationOperation',
      'unit' => 'unit'
};

# new object
sub new { 
    my ($class, %args) = @_; 
    my $self = { 
        #Array of timestamps, values, and optional notes
        'measurements' => $args{'measurements'}, 
        #ORIGINAL name of the variable for which we are creating the measurement records
        'name' => $args{'name'}, 
        #Name of the application or device used to record the measurement values
        'source' => $args{'source'}, 
        #Variable category name
        'category' => $args{'category'}, 
        #Way to aggregate measurements over time. Options are \"MEAN\" or \"SUM\"
        'combination_operation' => $args{'combinationOperation'}, 
        #Unit of measurement
        'unit' => $args{'unit'}
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