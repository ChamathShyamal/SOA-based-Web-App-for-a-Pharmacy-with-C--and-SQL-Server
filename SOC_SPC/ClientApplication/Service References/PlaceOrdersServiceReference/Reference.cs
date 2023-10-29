﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ClientApplication.PlaceOrdersServiceReference {
    using System.Data;
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="PlaceOrdersServiceReference.PlaceOrdersWSSoap")]
    public interface PlaceOrdersWSSoap {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/placeOrders", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        string placeOrders(string orderId, string drugName, string drugBrnad, int quantity, string pharmacyName, string branch, string pharmacyStaffId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/placeOrders", ReplyAction="*")]
        System.Threading.Tasks.Task<string> placeOrdersAsync(string orderId, string drugName, string drugBrnad, int quantity, string pharmacyName, string branch, string pharmacyStaffId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/searchOrders", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        System.Data.DataSet searchOrders(string orderId, string drugName, string drugBrand, string pharmacyName, string branch, string pharmacyStaffId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/searchOrders", ReplyAction="*")]
        System.Threading.Tasks.Task<System.Data.DataSet> searchOrdersAsync(string orderId, string drugName, string drugBrand, string pharmacyName, string branch, string pharmacyStaffId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/AutoOrderId", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        string AutoOrderId();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/AutoOrderId", ReplyAction="*")]
        System.Threading.Tasks.Task<string> AutoOrderIdAsync();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface PlaceOrdersWSSoapChannel : ClientApplication.PlaceOrdersServiceReference.PlaceOrdersWSSoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class PlaceOrdersWSSoapClient : System.ServiceModel.ClientBase<ClientApplication.PlaceOrdersServiceReference.PlaceOrdersWSSoap>, ClientApplication.PlaceOrdersServiceReference.PlaceOrdersWSSoap {
        
        public PlaceOrdersWSSoapClient() {
        }
        
        public PlaceOrdersWSSoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public PlaceOrdersWSSoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public PlaceOrdersWSSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public PlaceOrdersWSSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public string placeOrders(string orderId, string drugName, string drugBrnad, int quantity, string pharmacyName, string branch, string pharmacyStaffId) {
            return base.Channel.placeOrders(orderId, drugName, drugBrnad, quantity, pharmacyName, branch, pharmacyStaffId);
        }
        
        public System.Threading.Tasks.Task<string> placeOrdersAsync(string orderId, string drugName, string drugBrnad, int quantity, string pharmacyName, string branch, string pharmacyStaffId) {
            return base.Channel.placeOrdersAsync(orderId, drugName, drugBrnad, quantity, pharmacyName, branch, pharmacyStaffId);
        }
        
        public System.Data.DataSet searchOrders(string orderId, string drugName, string drugBrand, string pharmacyName, string branch, string pharmacyStaffId) {
            return base.Channel.searchOrders(orderId, drugName, drugBrand, pharmacyName, branch, pharmacyStaffId);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> searchOrdersAsync(string orderId, string drugName, string drugBrand, string pharmacyName, string branch, string pharmacyStaffId) {
            return base.Channel.searchOrdersAsync(orderId, drugName, drugBrand, pharmacyName, branch, pharmacyStaffId);
        }
        
        public string AutoOrderId() {
            return base.Channel.AutoOrderId();
        }
        
        public System.Threading.Tasks.Task<string> AutoOrderIdAsync() {
            return base.Channel.AutoOrderIdAsync();
        }
    }
}