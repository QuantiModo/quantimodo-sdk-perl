#
# Copyright 2016 SmartBear Software
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
package WWW::SwaggerClient::UserVariableApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::SwaggerClient::ApiClient;
use WWW::SwaggerClient::Configuration;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class   = shift;
    my (%self) = (
        'api_client' => WWW::SwaggerClient::ApiClient->instance,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}


#
# user_variables_get
#
# Get all UserVariables
# 
# @param string $access_token User&#39;s OAuth2 access token (optional)
# @param string $client_id The ID of the client application which last created or updated this user variable (optional)
# @param int $parent_id ID of the parent variable if this variable has any parent (optional)
# @param int $variable_id ID of variable (optional)
# @param int $user_id User ID (optional)
# @param int $default_unit_id D of unit to use for this variable (optional)
# @param number $minimum_allowed_value Minimum reasonable value for this variable (uses default unit) (optional)
# @param number $maximum_allowed_value Maximum reasonable value for this variable (uses default unit) (optional)
# @param number $filling_value Value for replacing null measurements (optional)
# @param int $join_with The Variable this Variable should be joined with. If the variable is joined with some other variable then it is not shown to user in the list of variables (optional)
# @param int $onset_delay Estimated number of seconds that pass before a stimulus produces a perceivable effect (optional)
# @param int $duration_of_action Estimated duration of time following the onset delay in which a stimulus produces a perceivable effect (optional)
# @param int $variable_category_id ID of variable category (optional)
# @param int $updated updated (optional)
# @param int $public Is variable public (optional)
# @param boolean $cause_only A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user (optional)
# @param string $filling_type 0 -&gt; No filling, 1 -&gt; Use filling-value (optional)
# @param int $number_of_measurements Number of measurements (optional)
# @param int $number_of_processed_measurements Number of processed measurements (optional)
# @param int $measurements_at_last_analysis Number of measurements at last analysis (optional)
# @param int $last_unit_id ID of last Unit (optional)
# @param int $last_original_unit_id ID of last original Unit (optional)
# @param int $last_original_value Last original value which is stored (optional)
# @param number $last_value Last Value (optional)
# @param number $last_original_value2 Last original value which is stored (optional)
# @param int $last_source_id ID of last source (optional)
# @param int $number_of_correlations Number of correlations for this variable (optional)
# @param string $status status (optional)
# @param string $error_message error_message (optional)
# @param string $last_successful_update_time When this variable or its settings were last updated (optional)
# @param number $standard_deviation Standard deviation (optional)
# @param number $variance Variance (optional)
# @param number $minimum_recorded_value Minimum recorded value of this variable (optional)
# @param number $maximum_recorded_value Maximum recorded value of this variable (optional)
# @param number $mean Mean (optional)
# @param number $median Median (optional)
# @param int $most_common_unit_id Most common Unit ID (optional)
# @param number $most_common_value Most common value (optional)
# @param number $number_of_unique_daily_values Number of unique daily values (optional)
# @param int $number_of_changes Number of changes (optional)
# @param number $skewness Skewness (optional)
# @param number $kurtosis Kurtosis (optional)
# @param number $latitude Latitude (optional)
# @param number $longitude Longitude (optional)
# @param string $location Location (optional)
# @param string $created_at When the record was first created. Use ISO 8601 datetime format (optional)
# @param string $updated_at When the record was last updated. Use ISO 8601 datetime format (optional)
# @param boolean $outcome Outcome variables (those with `outcome` == 1) are variables for which a human would generally want to identify the influencing factors.  These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables (optional)
# @param string $sources Comma-separated list of source names to limit variables to those sources (optional)
# @param int $earliest_source_time Earliest source time (optional)
# @param int $latest_source_time Latest source time (optional)
# @param int $earliest_measurement_time Earliest measurement time (optional)
# @param int $latest_measurement_time Latest measurement time (optional)
# @param int $earliest_filling_time Earliest filling time (optional)
# @param int $latest_filling_time Latest filling time (optional)
# @param int $limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records. (optional)
# @param int $offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned. (optional)
# @param string $sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order. (optional)
{
    my $params = {
    'access_token' => {
        data_type => 'string',
        description => 'User&#39;s OAuth2 access token',
        required => '0',
    },
    'client_id' => {
        data_type => 'string',
        description => 'The ID of the client application which last created or updated this user variable',
        required => '0',
    },
    'parent_id' => {
        data_type => 'int',
        description => 'ID of the parent variable if this variable has any parent',
        required => '0',
    },
    'variable_id' => {
        data_type => 'int',
        description => 'ID of variable',
        required => '0',
    },
    'user_id' => {
        data_type => 'int',
        description => 'User ID',
        required => '0',
    },
    'default_unit_id' => {
        data_type => 'int',
        description => 'D of unit to use for this variable',
        required => '0',
    },
    'minimum_allowed_value' => {
        data_type => 'number',
        description => 'Minimum reasonable value for this variable (uses default unit)',
        required => '0',
    },
    'maximum_allowed_value' => {
        data_type => 'number',
        description => 'Maximum reasonable value for this variable (uses default unit)',
        required => '0',
    },
    'filling_value' => {
        data_type => 'number',
        description => 'Value for replacing null measurements',
        required => '0',
    },
    'join_with' => {
        data_type => 'int',
        description => 'The Variable this Variable should be joined with. If the variable is joined with some other variable then it is not shown to user in the list of variables',
        required => '0',
    },
    'onset_delay' => {
        data_type => 'int',
        description => 'Estimated number of seconds that pass before a stimulus produces a perceivable effect',
        required => '0',
    },
    'duration_of_action' => {
        data_type => 'int',
        description => 'Estimated duration of time following the onset delay in which a stimulus produces a perceivable effect',
        required => '0',
    },
    'variable_category_id' => {
        data_type => 'int',
        description => 'ID of variable category',
        required => '0',
    },
    'updated' => {
        data_type => 'int',
        description => 'updated',
        required => '0',
    },
    'public' => {
        data_type => 'int',
        description => 'Is variable public',
        required => '0',
    },
    'cause_only' => {
        data_type => 'boolean',
        description => 'A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user',
        required => '0',
    },
    'filling_type' => {
        data_type => 'string',
        description => '0 -&gt; No filling, 1 -&gt; Use filling-value',
        required => '0',
    },
    'number_of_measurements' => {
        data_type => 'int',
        description => 'Number of measurements',
        required => '0',
    },
    'number_of_processed_measurements' => {
        data_type => 'int',
        description => 'Number of processed measurements',
        required => '0',
    },
    'measurements_at_last_analysis' => {
        data_type => 'int',
        description => 'Number of measurements at last analysis',
        required => '0',
    },
    'last_unit_id' => {
        data_type => 'int',
        description => 'ID of last Unit',
        required => '0',
    },
    'last_original_unit_id' => {
        data_type => 'int',
        description => 'ID of last original Unit',
        required => '0',
    },
    'last_original_value' => {
        data_type => 'int',
        description => 'Last original value which is stored',
        required => '0',
    },
    'last_value' => {
        data_type => 'number',
        description => 'Last Value',
        required => '0',
    },
    'last_original_value2' => {
        data_type => 'number',
        description => 'Last original value which is stored',
        required => '0',
    },
    'last_source_id' => {
        data_type => 'int',
        description => 'ID of last source',
        required => '0',
    },
    'number_of_correlations' => {
        data_type => 'int',
        description => 'Number of correlations for this variable',
        required => '0',
    },
    'status' => {
        data_type => 'string',
        description => 'status',
        required => '0',
    },
    'error_message' => {
        data_type => 'string',
        description => 'error_message',
        required => '0',
    },
    'last_successful_update_time' => {
        data_type => 'string',
        description => 'When this variable or its settings were last updated',
        required => '0',
    },
    'standard_deviation' => {
        data_type => 'number',
        description => 'Standard deviation',
        required => '0',
    },
    'variance' => {
        data_type => 'number',
        description => 'Variance',
        required => '0',
    },
    'minimum_recorded_value' => {
        data_type => 'number',
        description => 'Minimum recorded value of this variable',
        required => '0',
    },
    'maximum_recorded_value' => {
        data_type => 'number',
        description => 'Maximum recorded value of this variable',
        required => '0',
    },
    'mean' => {
        data_type => 'number',
        description => 'Mean',
        required => '0',
    },
    'median' => {
        data_type => 'number',
        description => 'Median',
        required => '0',
    },
    'most_common_unit_id' => {
        data_type => 'int',
        description => 'Most common Unit ID',
        required => '0',
    },
    'most_common_value' => {
        data_type => 'number',
        description => 'Most common value',
        required => '0',
    },
    'number_of_unique_daily_values' => {
        data_type => 'number',
        description => 'Number of unique daily values',
        required => '0',
    },
    'number_of_changes' => {
        data_type => 'int',
        description => 'Number of changes',
        required => '0',
    },
    'skewness' => {
        data_type => 'number',
        description => 'Skewness',
        required => '0',
    },
    'kurtosis' => {
        data_type => 'number',
        description => 'Kurtosis',
        required => '0',
    },
    'latitude' => {
        data_type => 'number',
        description => 'Latitude',
        required => '0',
    },
    'longitude' => {
        data_type => 'number',
        description => 'Longitude',
        required => '0',
    },
    'location' => {
        data_type => 'string',
        description => 'Location',
        required => '0',
    },
    'created_at' => {
        data_type => 'string',
        description => 'When the record was first created. Use ISO 8601 datetime format',
        required => '0',
    },
    'updated_at' => {
        data_type => 'string',
        description => 'When the record was last updated. Use ISO 8601 datetime format',
        required => '0',
    },
    'outcome' => {
        data_type => 'boolean',
        description => 'Outcome variables (those with `outcome` == 1) are variables for which a human would generally want to identify the influencing factors.  These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables',
        required => '0',
    },
    'sources' => {
        data_type => 'string',
        description => 'Comma-separated list of source names to limit variables to those sources',
        required => '0',
    },
    'earliest_source_time' => {
        data_type => 'int',
        description => 'Earliest source time',
        required => '0',
    },
    'latest_source_time' => {
        data_type => 'int',
        description => 'Latest source time',
        required => '0',
    },
    'earliest_measurement_time' => {
        data_type => 'int',
        description => 'Earliest measurement time',
        required => '0',
    },
    'latest_measurement_time' => {
        data_type => 'int',
        description => 'Latest measurement time',
        required => '0',
    },
    'earliest_filling_time' => {
        data_type => 'int',
        description => 'Earliest filling time',
        required => '0',
    },
    'latest_filling_time' => {
        data_type => 'int',
        description => 'Latest filling time',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.',
        required => '0',
    },
    'offset' => {
        data_type => 'int',
        description => 'OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ user_variables_get } = { 
    	summary => 'Get all UserVariables',
        params => $params,
        returns => 'inline_response_200_9',
        };
}
# @return inline_response_200_9
#
sub user_variables_get {
    my ($self, %args) = @_;

    

    # parse inputs
    my $_resource_path = '/userVariables';
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
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'access_token'}) {
        $query_params->{'access_token'} = $self->{api_client}->to_query_value($args{'access_token'});
    }# query params
    if ( exists $args{'client_id'}) {
        $query_params->{'client_id'} = $self->{api_client}->to_query_value($args{'client_id'});
    }# query params
    if ( exists $args{'parent_id'}) {
        $query_params->{'parent_id'} = $self->{api_client}->to_query_value($args{'parent_id'});
    }# query params
    if ( exists $args{'variable_id'}) {
        $query_params->{'variable_id'} = $self->{api_client}->to_query_value($args{'variable_id'});
    }# query params
    if ( exists $args{'user_id'}) {
        $query_params->{'user_id'} = $self->{api_client}->to_query_value($args{'user_id'});
    }# query params
    if ( exists $args{'default_unit_id'}) {
        $query_params->{'default_unit_id'} = $self->{api_client}->to_query_value($args{'default_unit_id'});
    }# query params
    if ( exists $args{'minimum_allowed_value'}) {
        $query_params->{'minimum_allowed_value'} = $self->{api_client}->to_query_value($args{'minimum_allowed_value'});
    }# query params
    if ( exists $args{'maximum_allowed_value'}) {
        $query_params->{'maximum_allowed_value'} = $self->{api_client}->to_query_value($args{'maximum_allowed_value'});
    }# query params
    if ( exists $args{'filling_value'}) {
        $query_params->{'filling_value'} = $self->{api_client}->to_query_value($args{'filling_value'});
    }# query params
    if ( exists $args{'join_with'}) {
        $query_params->{'join_with'} = $self->{api_client}->to_query_value($args{'join_with'});
    }# query params
    if ( exists $args{'onset_delay'}) {
        $query_params->{'onset_delay'} = $self->{api_client}->to_query_value($args{'onset_delay'});
    }# query params
    if ( exists $args{'duration_of_action'}) {
        $query_params->{'duration_of_action'} = $self->{api_client}->to_query_value($args{'duration_of_action'});
    }# query params
    if ( exists $args{'variable_category_id'}) {
        $query_params->{'variable_category_id'} = $self->{api_client}->to_query_value($args{'variable_category_id'});
    }# query params
    if ( exists $args{'updated'}) {
        $query_params->{'updated'} = $self->{api_client}->to_query_value($args{'updated'});
    }# query params
    if ( exists $args{'public'}) {
        $query_params->{'public'} = $self->{api_client}->to_query_value($args{'public'});
    }# query params
    if ( exists $args{'cause_only'}) {
        $query_params->{'cause_only'} = $self->{api_client}->to_query_value($args{'cause_only'});
    }# query params
    if ( exists $args{'filling_type'}) {
        $query_params->{'filling_type'} = $self->{api_client}->to_query_value($args{'filling_type'});
    }# query params
    if ( exists $args{'number_of_measurements'}) {
        $query_params->{'number_of_measurements'} = $self->{api_client}->to_query_value($args{'number_of_measurements'});
    }# query params
    if ( exists $args{'number_of_processed_measurements'}) {
        $query_params->{'number_of_processed_measurements'} = $self->{api_client}->to_query_value($args{'number_of_processed_measurements'});
    }# query params
    if ( exists $args{'measurements_at_last_analysis'}) {
        $query_params->{'measurements_at_last_analysis'} = $self->{api_client}->to_query_value($args{'measurements_at_last_analysis'});
    }# query params
    if ( exists $args{'last_unit_id'}) {
        $query_params->{'last_unit_id'} = $self->{api_client}->to_query_value($args{'last_unit_id'});
    }# query params
    if ( exists $args{'last_original_unit_id'}) {
        $query_params->{'last_original_unit_id'} = $self->{api_client}->to_query_value($args{'last_original_unit_id'});
    }# query params
    if ( exists $args{'last_original_value'}) {
        $query_params->{'last_original_value'} = $self->{api_client}->to_query_value($args{'last_original_value'});
    }# query params
    if ( exists $args{'last_value'}) {
        $query_params->{'last_value'} = $self->{api_client}->to_query_value($args{'last_value'});
    }# query params
    if ( exists $args{'last_original_value2'}) {
        $query_params->{'last_original_value'} = $self->{api_client}->to_query_value($args{'last_original_value2'});
    }# query params
    if ( exists $args{'last_source_id'}) {
        $query_params->{'last_source_id'} = $self->{api_client}->to_query_value($args{'last_source_id'});
    }# query params
    if ( exists $args{'number_of_correlations'}) {
        $query_params->{'number_of_correlations'} = $self->{api_client}->to_query_value($args{'number_of_correlations'});
    }# query params
    if ( exists $args{'status'}) {
        $query_params->{'status'} = $self->{api_client}->to_query_value($args{'status'});
    }# query params
    if ( exists $args{'error_message'}) {
        $query_params->{'error_message'} = $self->{api_client}->to_query_value($args{'error_message'});
    }# query params
    if ( exists $args{'last_successful_update_time'}) {
        $query_params->{'last_successful_update_time'} = $self->{api_client}->to_query_value($args{'last_successful_update_time'});
    }# query params
    if ( exists $args{'standard_deviation'}) {
        $query_params->{'standard_deviation'} = $self->{api_client}->to_query_value($args{'standard_deviation'});
    }# query params
    if ( exists $args{'variance'}) {
        $query_params->{'variance'} = $self->{api_client}->to_query_value($args{'variance'});
    }# query params
    if ( exists $args{'minimum_recorded_value'}) {
        $query_params->{'minimum_recorded_value'} = $self->{api_client}->to_query_value($args{'minimum_recorded_value'});
    }# query params
    if ( exists $args{'maximum_recorded_value'}) {
        $query_params->{'maximum_recorded_value'} = $self->{api_client}->to_query_value($args{'maximum_recorded_value'});
    }# query params
    if ( exists $args{'mean'}) {
        $query_params->{'mean'} = $self->{api_client}->to_query_value($args{'mean'});
    }# query params
    if ( exists $args{'median'}) {
        $query_params->{'median'} = $self->{api_client}->to_query_value($args{'median'});
    }# query params
    if ( exists $args{'most_common_unit_id'}) {
        $query_params->{'most_common_unit_id'} = $self->{api_client}->to_query_value($args{'most_common_unit_id'});
    }# query params
    if ( exists $args{'most_common_value'}) {
        $query_params->{'most_common_value'} = $self->{api_client}->to_query_value($args{'most_common_value'});
    }# query params
    if ( exists $args{'number_of_unique_daily_values'}) {
        $query_params->{'number_of_unique_daily_values'} = $self->{api_client}->to_query_value($args{'number_of_unique_daily_values'});
    }# query params
    if ( exists $args{'number_of_changes'}) {
        $query_params->{'number_of_changes'} = $self->{api_client}->to_query_value($args{'number_of_changes'});
    }# query params
    if ( exists $args{'skewness'}) {
        $query_params->{'skewness'} = $self->{api_client}->to_query_value($args{'skewness'});
    }# query params
    if ( exists $args{'kurtosis'}) {
        $query_params->{'kurtosis'} = $self->{api_client}->to_query_value($args{'kurtosis'});
    }# query params
    if ( exists $args{'latitude'}) {
        $query_params->{'latitude'} = $self->{api_client}->to_query_value($args{'latitude'});
    }# query params
    if ( exists $args{'longitude'}) {
        $query_params->{'longitude'} = $self->{api_client}->to_query_value($args{'longitude'});
    }# query params
    if ( exists $args{'location'}) {
        $query_params->{'location'} = $self->{api_client}->to_query_value($args{'location'});
    }# query params
    if ( exists $args{'created_at'}) {
        $query_params->{'created_at'} = $self->{api_client}->to_query_value($args{'created_at'});
    }# query params
    if ( exists $args{'updated_at'}) {
        $query_params->{'updated_at'} = $self->{api_client}->to_query_value($args{'updated_at'});
    }# query params
    if ( exists $args{'outcome'}) {
        $query_params->{'outcome'} = $self->{api_client}->to_query_value($args{'outcome'});
    }# query params
    if ( exists $args{'sources'}) {
        $query_params->{'sources'} = $self->{api_client}->to_query_value($args{'sources'});
    }# query params
    if ( exists $args{'earliest_source_time'}) {
        $query_params->{'earliest_source_time'} = $self->{api_client}->to_query_value($args{'earliest_source_time'});
    }# query params
    if ( exists $args{'latest_source_time'}) {
        $query_params->{'latest_source_time'} = $self->{api_client}->to_query_value($args{'latest_source_time'});
    }# query params
    if ( exists $args{'earliest_measurement_time'}) {
        $query_params->{'earliest_measurement_time'} = $self->{api_client}->to_query_value($args{'earliest_measurement_time'});
    }# query params
    if ( exists $args{'latest_measurement_time'}) {
        $query_params->{'latest_measurement_time'} = $self->{api_client}->to_query_value($args{'latest_measurement_time'});
    }# query params
    if ( exists $args{'earliest_filling_time'}) {
        $query_params->{'earliest_filling_time'} = $self->{api_client}->to_query_value($args{'earliest_filling_time'});
    }# query params
    if ( exists $args{'latest_filling_time'}) {
        $query_params->{'latest_filling_time'} = $self->{api_client}->to_query_value($args{'latest_filling_time'});
    }# query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }# query params
    if ( exists $args{'offset'}) {
        $query_params->{'offset'} = $self->{api_client}->to_query_value($args{'offset'});
    }# query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }
    
    
    
    my $_body_data;
    

    # authentication setting, if any
    my $auth_settings = [qw(quantimodo_oauth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('inline_response_200_9', $response);
    return $_response_object;
    
}

#
# user_variables_post
#
# Store UserVariable
# 
# @param string $access_token User&#39;s OAuth2 access token (optional)
# @param UserVariable $body UserVariable that should be stored (optional)
{
    my $params = {
    'access_token' => {
        data_type => 'string',
        description => 'User&#39;s OAuth2 access token',
        required => '0',
    },
    'body' => {
        data_type => 'UserVariable',
        description => 'UserVariable that should be stored',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ user_variables_post } = { 
    	summary => 'Store UserVariable',
        params => $params,
        returns => 'inline_response_200_30',
        };
}
# @return inline_response_200_30
#
sub user_variables_post {
    my ($self, %args) = @_;

    

    # parse inputs
    my $_resource_path = '/userVariables';
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
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'access_token'}) {
        $query_params->{'access_token'} = $self->{api_client}->to_query_value($args{'access_token'});
    }
    
    
    
    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(quantimodo_oauth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('inline_response_200_30', $response);
    return $_response_object;
    
}

#
# user_variables_id_get
#
# Get UserVariable
# 
# @param int $id id of UserVariable (required)
# @param string $access_token User&#39;s OAuth2 access token (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'id of UserVariable',
        required => '1',
    },
    'access_token' => {
        data_type => 'string',
        description => 'User&#39;s OAuth2 access token',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ user_variables_id_get } = { 
    	summary => 'Get UserVariable',
        params => $params,
        returns => 'inline_response_200_30',
        };
}
# @return inline_response_200_30
#
sub user_variables_id_get {
    my ($self, %args) = @_;

    
    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling user_variables_id_get");
    }
    

    # parse inputs
    my $_resource_path = '/userVariables/{id}';
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
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'access_token'}) {
        $query_params->{'access_token'} = $self->{api_client}->to_query_value($args{'access_token'});
    }
    
    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }
    
    my $_body_data;
    

    # authentication setting, if any
    my $auth_settings = [qw(quantimodo_oauth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('inline_response_200_30', $response);
    return $_response_object;
    
}

#
# user_variables_id_put
#
# Update UserVariable
# 
# @param int $id id of UserVariable (required)
# @param string $access_token User&#39;s OAuth2 access token (optional)
# @param UserVariable $body UserVariable that should be updated (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'id of UserVariable',
        required => '1',
    },
    'access_token' => {
        data_type => 'string',
        description => 'User&#39;s OAuth2 access token',
        required => '0',
    },
    'body' => {
        data_type => 'UserVariable',
        description => 'UserVariable that should be updated',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ user_variables_id_put } = { 
    	summary => 'Update UserVariable',
        params => $params,
        returns => 'inline_response_200_2',
        };
}
# @return inline_response_200_2
#
sub user_variables_id_put {
    my ($self, %args) = @_;

    
    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling user_variables_id_put");
    }
    

    # parse inputs
    my $_resource_path = '/userVariables/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'access_token'}) {
        $query_params->{'access_token'} = $self->{api_client}->to_query_value($args{'access_token'});
    }
    
    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }
    
    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(quantimodo_oauth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('inline_response_200_2', $response);
    return $_response_object;
    
}

#
# user_variables_id_delete
#
# Delete UserVariable
# 
# @param int $id id of UserVariable (required)
# @param string $access_token User&#39;s OAuth2 access token (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'id of UserVariable',
        required => '1',
    },
    'access_token' => {
        data_type => 'string',
        description => 'User&#39;s OAuth2 access token',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ user_variables_id_delete } = { 
    	summary => 'Delete UserVariable',
        params => $params,
        returns => 'inline_response_200_2',
        };
}
# @return inline_response_200_2
#
sub user_variables_id_delete {
    my ($self, %args) = @_;

    
    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling user_variables_id_delete");
    }
    

    # parse inputs
    my $_resource_path = '/userVariables/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'access_token'}) {
        $query_params->{'access_token'} = $self->{api_client}->to_query_value($args{'access_token'});
    }
    
    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }
    
    my $_body_data;
    

    # authentication setting, if any
    my $auth_settings = [qw(quantimodo_oauth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('inline_response_200_2', $response);
    return $_response_object;
    
}


1;