package MetaStore::Kern;


=head1 NAME

MetaStore::Kern - Class of kernel object.

=head1 SYNOPSIS

    use MetaStore::Kern;
    use base qw/ MetaStore::Kern /;

=head1 DESCRIPTION

Class of kernel object.

=head1 METHODS

=cut

use HTML::WebDAO::Engine;
use MetaStore::Config;
use Data::Dumper;
use strict;
use warnings;
use base qw(HTML::WebDAO::Engine);
__PACKAGE__->attributes qw/_conf/;

=head2 init

Initialize object

=cut

sub init {
    my $self = shift;
    my ( %opt ) = @_;
    $self->RegEvent( $self,"_sess_ended", \&commit );
    return $self->SUPER::init(@_);
}
sub config {
    my $self = shift;
    return $self->_conf
}

sub commit {
    my $self = shift;
}

1;
__END__

=head1 SEE ALSO

Metasore, README

=head1 AUTHOR

Zahatski Aliaksandr, <zag@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2005-2006 by Zahatski Aliaksandr

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.8 or,
at your option, any later version of Perl 5 you may have available.

=cut

