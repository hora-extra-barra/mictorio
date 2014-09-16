package Mictorio;
use Moo;
use diagnostics;

has 'numero_de_mictorios',
    is       => 'ro',
    required => 1,
    default  => sub { 5 };


1;
