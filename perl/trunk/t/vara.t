#!perl
#
# $Id$
#
use strict;
use warnings;

use Test::More tests => 366;
use DateTime;
use DateTime::Indic::Chandramana;


my $dates = {
    '01' => [
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
    ],
    '02' => [
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
    ],
    '03' => [
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
    ],
    '04' => [
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
    ],
    '05' => [
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
    ],
    '06' => [
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
    ],
    '07' => [
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
    ],
    '08' => [
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
    ],
    '09' => [
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
    ],
    '10' => [
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
    ],
    '11' => [
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
    ],
    '12' => [
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
        'guruvAra',
        'shukravAra',
        'shanivAra',
        'ravivAra',
        'somavAra',
        'ma~ngalavAra',
        'budhavAra',
    ],
};

foreach my $month (sort keys %{$dates}) {
    my $day = 0;    
    foreach my $expected (@{$dates->{$month}}) {
        ++$day;
        my $dt = DateTime->new(day => $day, month => $month, year => 2008, 
            time_zone => 'Asia/Kolkata');
        # sunrise at Mumbai
        my $date =
        DateTime::Indic::Chandramana->from_object(
            object    => $dt,
            latitude  => '18.96',
            longitude => '72.82',
        );
        is($date->strftime("%V"), $expected, "$month $day, 2008");
    }
}
