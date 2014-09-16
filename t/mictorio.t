use strict;
use warnings;
use diagnostics;

use Test::More;

use Mictorio;
pass 'modulo Mictorio carregado!';

subtest 'estrutura basica' => sub {
  my $mictorio = Mictorio->new;
  ok $mictorio, 'objeto criado';
  can_ok $mictorio, 'numero_de_mictorios';
  is $mictorio->numero_de_mictorios, 5, 'numero de mictorios padrao';
};

subtest 'sobrescrevendo numero de mictorios' => sub {
  my $mictorio = Mictorio->new(
    numero_de_mictorios => 12,
  );
  is $mictorio->numero_de_mictorios, 12, 'temos 12 mictorios!';
};



done_testing;
