require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'sashite', 'cpn'
require 'spectus'

include Spectus

# rubocop:disable Metrics/LineLength

it { Sashite::Cpn.generate(false, [], [], []) }.MUST eql('B------')

it { Sashite::Cpn.generate(false, [8, 8], [], []) }.MUST raise_exception(Sashite::Cpn::LengthError)

it { Sashite::Cpn.generate(false, [8, 8], ['w:r', 'w:n', 'w:b', 'w:q', 'w:^k', 'w:b', 'w:n', 'w:r', 'w:p', 'w:p', 'w:p', 'w:p', 'w:p', 'w:p', 'w:p', 'w:p', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 'W:P', 'W:P', 'W:P', 'W:P', 'W:P', 'W:P', 'W:P', 'W:P', 'W:R', 'W:N', 'W:B', 'W:Q', 'W:^K', 'W:B', 'W:N', 'W:R'], []) }.MUST eql('B--8,8--w:r,w:n,w:b,w:q,w:^k,w:b,w:n,w:r,w:p,w:p,w:p,w:p,w:p,w:p,w:p,w:p,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,W:P,W:P,W:P,W:P,W:P,W:P,W:P,W:P,W:R,W:N,W:B,W:Q,W:^K,W:B,W:N,W:R--')

it { Sashite::Cpn.generate(true, [2, 1], [nil, nil], [:foo]) }.MUST eql('t--2,1--,--foo')

it do
  Sashite::Cpn.generate(true, [8, 4, 8], [nil, nil, nil, nil, :foo, nil, nil, nil, nil, nil, nil, nil, :bar, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil], [])
end.MUST eql('t--8,4,8--,,,,foo,,,,,,,,bar,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,--')
