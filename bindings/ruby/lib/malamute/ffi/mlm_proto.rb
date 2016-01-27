################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################

module Malamute
  module FFI

    # Set the content field, transferring ownership from caller
    # @note This class is 100% generated using zproject.
    class MlmProto
      # Raised when one tries to use an instance of {MlmProto} after
      # the internal pointer to the native object has been nullified.
      class DestroyedError < RuntimeError; end

      # Boilerplate for self pointer, initializer, and finalizer
      class << self
        alias :__new :new
      end
      # Attaches the pointer _ptr_ to this instance and defines a finalizer for
      # it if necessary.
      # @param ptr [::FFI::Pointer]
      # @param finalize [Boolean]
      def initialize(ptr, finalize = true)
        @ptr = ptr
        if @ptr.null?
          @ptr = nil # Remove null pointers so we don't have to test for them.
        elsif finalize
          @finalizer = self.class.create_finalizer_for @ptr
          ObjectSpace.define_finalizer self, @finalizer
        end
      end
      # @param ptr [::FFI::Pointer]
      # @return [Proc]
      def self.create_finalizer_for(ptr)
        Proc.new do
          ptr_ptr = ::FFI::MemoryPointer.new :pointer
          ptr_ptr.write_pointer ptr
          ::Malamute::FFI.mlm_proto_destroy ptr_ptr
        end
      end
      # @return [Boolean]
      def null?
        !@ptr or @ptr.null?
      end
      # Return internal pointer
      # @return [::FFI::Pointer]
      def __ptr
        raise DestroyedError unless @ptr
        @ptr
      end
      # So external Libraries can just pass the Object to a FFI function which expects a :pointer
      alias_method :to_ptr, :__ptr
      # Nullify internal pointer and return pointer pointer.
      # @note This detaches the current instance from the native object
      #   and thus makes it unusable.
      # @return [::FFI::MemoryPointer] the pointer pointing to a pointer
      #   pointing to the native object
      def __ptr_give_ref
        raise DestroyedError unless @ptr
        ptr_ptr = ::FFI::MemoryPointer.new :pointer
        ptr_ptr.write_pointer @ptr
        __undef_finalizer if @finalizer
        @ptr = nil
        ptr_ptr
      end
      # Undefines the finalizer for this object.
      # @note Only use this if you need to and can guarantee that the native
      #   object will be freed by other means.
      # @return [void]
      def __undef_finalizer
        ObjectSpace.undefine_finalizer self
        @finalizer = nil
      end

      # Create a new empty mlm_proto
      # @return [Malamute::MlmProto]
      def self.new()
        ptr = ::Malamute::FFI.mlm_proto_new()
        __new ptr
      end

      # Destroy a mlm_proto instance
      #
      # @return [void]
      def destroy()
        return unless @ptr
        self_p = __ptr_give_ref
        result = ::Malamute::FFI.mlm_proto_destroy(self_p)
        result
      end

      # Receive a mlm_proto from the socket. Returns 0 if OK, -1 if
      # there was an error. Blocks if there is no message waiting. 
      #
      # @param input [::FFI::Pointer, #to_ptr]
      # @return [Integer]
      def recv(input)
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_recv(self_p, input)
        result
      end

      # Send the mlm_proto to the output socket, does not destroy it
      #
      # @param output [::FFI::Pointer, #to_ptr]
      # @return [Integer]
      def send(output)
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_send(self_p, output)
        result
      end

      # Print contents of message to stdout
      #
      # @return [void]
      def print()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_print(self_p)
        result
      end

      # Get the message routing id, as a frame
      #
      # @return [::FFI::Pointer]
      def routing_id()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_routing_id(self_p)
        result
      end

      # Set the message routing id from a frame
      #
      # @param routing_id [::FFI::Pointer, #to_ptr]
      # @return [void]
      def set_routing_id(routing_id)
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_set_routing_id(self_p, routing_id)
        result
      end

      # Get the mlm_proto message id
      #
      # @return [Integer]
      def id()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_id(self_p)
        result
      end

      # Set the mlm_proto message id
      #
      # @param id [Integer, #to_int, #to_i]
      # @return [void]
      def set_id(id)
        raise DestroyedError unless @ptr
        self_p = @ptr
        id = Integer(id)
        result = ::Malamute::FFI.mlm_proto_set_id(self_p, id)
        result
      end

      # Get the mlm_proto message id as printable text
      #
      # @return [String]
      def command()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_command(self_p)
        result
      end

      # Get the address field
      #
      # @return [String]
      def address()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_address(self_p)
        result
      end

      # Set the address field
      #
      # @param address [String, #to_s, nil]
      # @return [void]
      def set_address(address)
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_set_address(self_p, address)
        result
      end

      # Get the stream field
      #
      # @return [String]
      def stream()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_stream(self_p)
        result
      end

      # Set the stream field
      #
      # @param stream [String, #to_s, nil]
      # @return [void]
      def set_stream(stream)
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_set_stream(self_p, stream)
        result
      end

      # Get the pattern field
      #
      # @return [String]
      def pattern()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_pattern(self_p)
        result
      end

      # Set the pattern field
      #
      # @param pattern [String, #to_s, nil]
      # @return [void]
      def set_pattern(pattern)
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_set_pattern(self_p, pattern)
        result
      end

      # Get the subject field
      #
      # @return [String]
      def subject()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_subject(self_p)
        result
      end

      # Set the subject field
      #
      # @param subject [String, #to_s, nil]
      # @return [void]
      def set_subject(subject)
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_set_subject(self_p, subject)
        result
      end

      # Get a copy of the content field
      #
      # @return [::FFI::Pointer]
      def content()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_content(self_p)
        result
      end

      # Get the content field and transfer ownership to caller
      #
      # @return [::FFI::Pointer]
      def get_content()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_get_content(self_p)
        result
      end

      # 
      #
      # @param content_p [::FFI::Pointer, #to_ptr]
      # @return [void]
      def set_content(content_p)
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_set_content(self_p, content_p)
        result
      end

      # Get the sender field
      #
      # @return [String]
      def sender()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_sender(self_p)
        result
      end

      # Set the sender field
      #
      # @param sender [String, #to_s, nil]
      # @return [void]
      def set_sender(sender)
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_set_sender(self_p, sender)
        result
      end

      # Get the tracker field
      #
      # @return [String]
      def tracker()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_tracker(self_p)
        result
      end

      # Set the tracker field
      #
      # @param tracker [String, #to_s, nil]
      # @return [void]
      def set_tracker(tracker)
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_set_tracker(self_p, tracker)
        result
      end

      # Get the timeout field
      #
      # @return [Integer]
      def timeout()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_timeout(self_p)
        result
      end

      # Set the timeout field
      #
      # @param timeout [Integer, #to_int, #to_i]
      # @return [void]
      def set_timeout(timeout)
        raise DestroyedError unless @ptr
        self_p = @ptr
        timeout = Integer(timeout)
        result = ::Malamute::FFI.mlm_proto_set_timeout(self_p, timeout)
        result
      end

      # Get the status_code field
      #
      # @return [Integer]
      def status_code()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_status_code(self_p)
        result
      end

      # Set the status_code field
      #
      # @param status_code [Integer, #to_int, #to_i]
      # @return [void]
      def set_status_code(status_code)
        raise DestroyedError unless @ptr
        self_p = @ptr
        status_code = Integer(status_code)
        result = ::Malamute::FFI.mlm_proto_set_status_code(self_p, status_code)
        result
      end

      # Get the status_reason field
      #
      # @return [String]
      def status_reason()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_status_reason(self_p)
        result
      end

      # Set the status_reason field
      #
      # @param status_reason [String, #to_s, nil]
      # @return [void]
      def set_status_reason(status_reason)
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_set_status_reason(self_p, status_reason)
        result
      end

      # Get the amount field
      #
      # @return [Integer]
      def amount()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::Malamute::FFI.mlm_proto_amount(self_p)
        result
      end

      # Set the amount field
      #
      # @param amount [Integer, #to_int, #to_i]
      # @return [void]
      def set_amount(amount)
        raise DestroyedError unless @ptr
        self_p = @ptr
        amount = Integer(amount)
        result = ::Malamute::FFI.mlm_proto_set_amount(self_p, amount)
        result
      end

      # Self test of this class.
      #
      # @param verbose [Boolean]
      # @return [void]
      def self.test(verbose)
        verbose = !(0==verbose||!verbose) # boolean
        result = ::Malamute::FFI.mlm_proto_test(verbose)
        result
      end
    end
  end
end

################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################
