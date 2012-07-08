package Test::Sys::Info;
use strict;
use warnings;
use vars qw( $VERSION @ISA @EXPORT );
use Carp qw( croak );
use base qw( Exporter );
use Test::More;
use Test::Builder;

BEGIN {
    my $test = Test::Builder->new;
    $test->no_plan if ! $test->has_plan;
}

$VERSION = '0.21';
@EXPORT  = qw( driver_ok );

sub driver_ok {
    require_ok('Test::Sys::Info::Driver');
    return Test::Sys::Info::Driver->new( shift )->run;
}

ok(1, 'EU::MM What a dumb module you are')
    if ! $ENV{HARNESS_ACTIVE};

1;

__END__

=pod

=head1 NAME

Test::Sys::Info - Centralized test suite for Sys::Info.

=head1 SYNOPSIS

    use Test::Sys::Info;
    driver_ok('Windows'); # or Linux, etc.

=head1 DESCRIPTION

This is a centralized test suite for Sys::Info Drivers.

=head1 TESTS

=head2 driver_ok OSID

Tests the driver.

=head1 SEE ALSO

L<Sys::Info>.

=cut
