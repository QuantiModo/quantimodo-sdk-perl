#
# Copyright 2015 Reverb Technologies, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
#
package WWW::SwaggerClient::MeasurementsApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);


#use WWW::Swagger::Model::Category;
#use WWW::Swagger::Model::Pet;


use WWW::SwaggerClient::APIClient;

our @EXPORT_OK = qw(
  measurement_sources_get 
  measurement_sources_post 
  measurements_get 
  measurements_v2_post 
  measurements_range_get 
  
);

sub new {
    my $class   = shift;
    my $default_api_client = WWW::SwaggerClient::APIClient->new;
    my (%self) = (
        'api_client' => $default_api_client,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}

    
    #
    # measurement_sources_get
    #
    # Get measurement sources
    # 
    # @return void
    #
    sub measurement_sources_get {
      my ($self, %args) = @_;

      

      # parse inputs
      my $_resource_path = '/measurementSources';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'GET';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept('application/json');
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

      
      
      
      
      my $_body_data;
      

      # for HTTP post (form)
      #$_body_data = $_body ? undef : $form_params;

      # make the API Call
      
      $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data);
      return;
      
  }
  
    #
    # measurement_sources_post
    #
    # Add a data source
    # 
    # @param ARRAY[MeasurementSource] $name An array of names of data sources you want to add. (required)
    # @return void
    #
    sub measurement_sources_post {
      my ($self, %args) = @_;

      
      # verify the required parameter 'name' is set
      unless (exists $args{'name'}) {
        croak("Missing the required parameter 'name' when calling measurement_sources_post");
      }
      

      # parse inputs
      my $_resource_path = '/measurementSources';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'POST';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept('application/json');
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

      
      
      
      
      my $_body_data;
       # body params
      if ( exists $args{'name'}) {
        $_body_data = $args{'name'};
      }

      # for HTTP post (form)
      #$_body_data = $_body ? undef : $form_params;

      # make the API Call
      
      $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data);
      return;
      
  }
  
    #
    # measurements_get
    #
    # Get measurements for this user
    # 
    # @param string $variable_name Name of the variable you want measurements for (required)
    # @param string $unit The unit your want the measurements in (required)
    # @param string $start_time The lower limit of measurements returned (Epoch) (required)
    # @param string $end_time The upper limit of measurements returned (Epoch) (required)
    # @param int $grouping_width The time (in seconds) over which measurements are grouped together (required)
    # @param string $grouping_timezone The time (in seconds) over which measurements are grouped together (required)
    # @return void
    #
    sub measurements_get {
      my ($self, %args) = @_;

      
      # verify the required parameter 'variable_name' is set
      unless (exists $args{'variable_name'}) {
        croak("Missing the required parameter 'variable_name' when calling measurements_get");
      }
      

      # parse inputs
      my $_resource_path = '/measurements';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'GET';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept('application/json');
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

       # query params
      if ( exists $args{'variable_name'}) {
        $query_params->{'variableName'} = WWW::::APIClient::to_query_value($args{'variable_name'});
      } # query params
      if ( exists $args{'unit'}) {
        $query_params->{'unit'} = WWW::::APIClient::to_query_value($args{'unit'});
      } # query params
      if ( exists $args{'start_time'}) {
        $query_params->{'startTime'} = WWW::::APIClient::to_query_value($args{'start_time'});
      } # query params
      if ( exists $args{'end_time'}) {
        $query_params->{'endTime'} = WWW::::APIClient::to_query_value($args{'end_time'});
      } # query params
      if ( exists $args{'grouping_width'}) {
        $query_params->{'groupingWidth'} = WWW::::APIClient::to_query_value($args{'grouping_width'});
      } # query params
      if ( exists $args{'grouping_timezone'}) {
        $query_params->{'groupingTimezone'} = WWW::::APIClient::to_query_value($args{'grouping_timezone'});
      }
      
      
      
      my $_body_data;
      

      # for HTTP post (form)
      #$_body_data = $_body ? undef : $form_params;

      # make the API Call
      
      $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data);
      return;
      
  }
  
    #
    # measurements_v2_post
    #
    # Post a new set of measurements to the database
    # 
    # @param ARRAY[Measurement] $measurements An array of measurements you want to insert. (required)
    # @return void
    #
    sub measurements_v2_post {
      my ($self, %args) = @_;

      
      # verify the required parameter 'measurements' is set
      unless (exists $args{'measurements'}) {
        croak("Missing the required parameter 'measurements' when calling measurements_v2_post");
      }
      

      # parse inputs
      my $_resource_path = '/measurements/v2';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'POST';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept('application/json');
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

      
      
      
      
      my $_body_data;
       # body params
      if ( exists $args{'measurements'}) {
        $_body_data = $args{'measurements'};
      }

      # for HTTP post (form)
      #$_body_data = $_body ? undef : $form_params;

      # make the API Call
      
      $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data);
      return;
      
  }
  
    #
    # measurements_range_get
    #
    # Get measurements range for this user
    # 
    # @param string $sources Enter source name to limit to specific source (varchar) (required)
    # @param int $user If not specified, uses currently logged in user (bigint) (required)
    # @return void
    #
    sub measurements_range_get {
      my ($self, %args) = @_;

      

      # parse inputs
      my $_resource_path = '/measurementsRange';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'GET';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept('application/json');
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

       # query params
      if ( exists $args{'sources'}) {
        $query_params->{'sources'} = WWW::::APIClient::to_query_value($args{'sources'});
      } # query params
      if ( exists $args{'user'}) {
        $query_params->{'user'} = WWW::::APIClient::to_query_value($args{'user'});
      }
      
      
      
      my $_body_data;
      

      # for HTTP post (form)
      #$_body_data = $_body ? undef : $form_params;

      # make the API Call
      
      $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data);
      return;
      
  }
  


1;
