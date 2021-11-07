# frozen_string_literal: true

module Writable
  def <<(string)
    write(string)
    self
  end

  def print(*args)
    %x{
        for (var i = 0, ii = args.length; i < ii; i++) {
          args[i] = #{String(`args[i]`)}
        }
        self.$write(args.join(#{$,}));
    }
    nil
  end

  def puts(*args)
    %x{
        for (var i = 0, ii = args.length; i < ii; i++) {
          args[i] = #{String(`args[i]`).chomp}
        }
        self.$write(args.concat([nil]).join(#{$/}));
    }
    nil
  end
end
