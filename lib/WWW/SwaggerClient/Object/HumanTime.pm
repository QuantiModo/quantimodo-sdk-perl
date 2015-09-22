package WWW::SwaggerClient::Object::HumanTime;

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
    'date' => 'string',
    'timezone_type' => 'int',
    'timezone' => 'string'
};

my $attribute_map = {
    'date' => 'date',
    'timezone_type' => 'timezone_type',
    'timezone' => 'timezone'
};

# new object
sub new { 
    my ($class, %args) = @_; 
    my $self = { 
        #date time
        'date' => $args{'date'}, 
        #
        'timezone_type' => $args{'timezone_type'}, 
        #timezone of date time
        'timezone' => $args{'timezone'}
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
