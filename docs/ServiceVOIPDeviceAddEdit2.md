# ServiceVOIPDeviceAddEdit2

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**callForward** | [**ModelsCallForward**](ModelsCallForward.md) |  | [optional] 
**callerId** | [**ServiceVOIPDeviceAddEdit3c**](ServiceVOIPDeviceAddEdit3c.md) |  | [optional] 
**deviceType** | **String** |  | [optional] 
**doNotDisturb** | [**ModelsVOIPSharedDoNotDisturb**](ModelsVOIPSharedDoNotDisturb.md) |  | [optional] 
**enabled** | **Bool** | cannot use required, else it has to be true and false is not allowed | [optional] 
**macAddress** | **String** | dont use mac, it enforces :, which voip does not like | [optional] 
**media** | [**ServiceVOIPDeviceAddEdit3d**](ServiceVOIPDeviceAddEdit3d.md) |  | [optional] 
**musicOnHold** | [**ModelsMusicOnHold**](ModelsMusicOnHold.md) |  | [optional] 
**name** | **String** |  | 
**ownerId** | **String** | json omitempty is needed else voip fails on \&quot;\&quot; for owner_id | [optional] 
**provision** | [**ServiceVOIPDeviceAddEditProvision**](ServiceVOIPDeviceAddEditProvision.md) |  | [optional] 
**sip** | [**ServiceVOIPDeviceAddEdit3a**](ServiceVOIPDeviceAddEdit3a.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


