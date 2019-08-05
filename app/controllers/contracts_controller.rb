class ContractsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:chose, :create]

  def chose
    @contract = Contract.new
    if @contract.service_one.nil? && @contract.service_two.nil?
      @contract.service_one = params([:service_id])
      raise
    elsif @contract.service_two.nil? && !@contract.service_one.nil?
      @contract.service_two = params([:service_id])
    end

  end


  private

  def contract_params
    params.require(:contract).permit(:service_one, :service_two)
  end
end
