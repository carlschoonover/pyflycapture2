# -*- coding: utf8 -*-
#
#   pyflycapture2 - python bindings for libflycapture2_c
#   Copyright (C) 2012 Robert Jordens <jordens@phys.ethz.ch>
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.

from _FlyCapture2Defs_C cimport *

# This code was automatically generated by CWrap version 0.0.0

cdef extern from "FlyCapture2_C.h":

    fc2Error fc2CreateContext(fc2Context *pContext) nogil

    fc2Error fc2CreateGigEContext(fc2Context *pContext) nogil

    fc2Error fc2DestroyContext(fc2Context context) nogil

    fc2Error fc2FireBusReset(fc2Context context, fc2PGRGuid *pGuid) nogil

    fc2Error fc2GetNumOfCameras(fc2Context context, unsigned int *pNumCameras) nogil

    fc2Error fc2GetCameraFromIndex(fc2Context context, unsigned int index, fc2PGRGuid *pGuid) nogil

    fc2Error fc2GetCameraFromSerialNumber(fc2Context context, unsigned int serialNumber, fc2PGRGuid *pGuid) nogil

    fc2Error fc2GetCameraSerialNumberFromIndex(fc2Context context, unsigned int index, unsigned int *pSerialNumber) nogil

    fc2Error fc2GetInterfaceTypeFromGuid(fc2Context context, fc2PGRGuid *pGuid, fc2InterfaceType *pInterfaceType) nogil

    fc2Error fc2GetNumOfDevices(fc2Context context, unsigned int *pNumDevices) nogil

    fc2Error fc2GetDeviceFromIndex(fc2Context context, unsigned int index, fc2PGRGuid *pGuid) nogil

    fc2Error fc2RegisterCallback(fc2Context context, fc2BusEventCallback enumCallback, fc2BusCallbackType callbackType, void *pParameter, fc2CallbackHandle *pCallbackHandle) nogil

    fc2Error fc2UnregisterCallback(fc2Context context, fc2CallbackHandle callbackHandle) nogil

    fc2Error fc2RescanBus(fc2Context context) nogil

    fc2Error fc2ForceIPAddressToCamera(fc2Context context, fc2MACAddress macAddress, fc2IPAddress ipAddress, fc2IPAddress subnetMask, fc2IPAddress defaultGateway) nogil

    fc2Error fc2DiscoverGigECameras(fc2Context context, fc2CameraInfo *gigECameras, unsigned int *arraySize) nogil

    fc2Error fc2WriteRegister(fc2Context context, unsigned int address, unsigned int value) nogil

    fc2Error fc2WriteRegisterBroadcast(fc2Context context, unsigned int address, unsigned int value) nogil

    fc2Error fc2ReadRegister(fc2Context context, unsigned int address, unsigned int *pValue) nogil

    fc2Error fc2WriteRegisterBlock(fc2Context context, short unsigned int addressHigh, unsigned int addressLow, unsigned int *pBuffer, unsigned int length) nogil

    fc2Error fc2ReadRegisterBlock(fc2Context context, short unsigned int addressHigh, unsigned int addressLow, unsigned int *pBuffer, unsigned int length) nogil

    fc2Error fc2Connect(fc2Context context, fc2PGRGuid *guid) nogil

    fc2Error fc2Disconnect(fc2Context context) nogil

    fc2Error fc2SetCallback(fc2Context context, fc2ImageEventCallback pCallbackFn, void *pCallbackData) nogil

    fc2Error fc2StartCapture(fc2Context context) nogil

    fc2Error fc2StartCaptureCallback(fc2Context context, fc2ImageEventCallback pCallbackFn, void *pCallbackData) nogil

    fc2Error fc2StartSyncCapture(unsigned int numCameras, fc2Context *pContexts) nogil

    fc2Error fc2StartSyncCaptureCallback(unsigned int numCameras, fc2Context *pContexts, fc2ImageEventCallback *pCallbackFns, void **pCallbackDataArray) nogil

    fc2Error fc2RetrieveBuffer(fc2Context context, fc2Image *pImage) nogil

    fc2Error fc2StopCapture(fc2Context context) nogil

    fc2Error fc2SetUserBuffers(fc2Context context, unsigned char *ppMemBuffers, int size, int nNumBuffers) nogil

    fc2Error fc2GetConfiguration(fc2Context context, fc2Config *config) nogil

    fc2Error fc2SetConfiguration(fc2Context context, fc2Config *config) nogil

    fc2Error fc2GetCameraInfo(fc2Context context, fc2CameraInfo *pCameraInfo) nogil

    fc2Error fc2GetPropertyInfo(fc2Context context, fc2PropertyInfo *propInfo) nogil

    fc2Error fc2GetProperty(fc2Context context, fc2Property *prop) nogil

    fc2Error fc2SetProperty(fc2Context context, fc2Property *prop) nogil

    fc2Error fc2SetPropertyBroadcast(fc2Context context, fc2Property *prop) nogil

    fc2Error fc2GetGPIOPinDirection(fc2Context context, unsigned int pin, unsigned int *pDirection) nogil

    fc2Error fc2SetGPIOPinDirection(fc2Context context, unsigned int pin, unsigned int direction) nogil

    fc2Error fc2SetGPIOPinDirectionBroadcast(fc2Context context, unsigned int pin, unsigned int direction) nogil

    fc2Error fc2GetTriggerModeInfo(fc2Context context, fc2TriggerModeInfo *triggerModeInfo) nogil

    fc2Error fc2GetTriggerMode(fc2Context context, fc2TriggerMode *triggerMode) nogil

    fc2Error fc2SetTriggerMode(fc2Context context, fc2TriggerMode *triggerMode) nogil

    fc2Error fc2SetTriggerModeBroadcast(fc2Context context, fc2TriggerMode *triggerMode) nogil

    fc2Error fc2FireSoftwareTrigger(fc2Context context) nogil

    fc2Error fc2FireSoftwareTriggerBroadcast(fc2Context context) nogil

    fc2Error fc2GetTriggerDelayInfo(fc2Context context, fc2TriggerDelayInfo *triggerDelayInfo) nogil

    fc2Error fc2GetTriggerDelay(fc2Context context, fc2TriggerDelay *triggerDelay) nogil

    fc2Error fc2SetTriggerDelay(fc2Context context, fc2TriggerDelay *triggerDelay) nogil

    fc2Error fc2SetTriggerDelayBroadcast(fc2Context context, fc2TriggerDelay *triggerDelay) nogil

    fc2Error fc2GetStrobeInfo(fc2Context context, fc2StrobeInfo *strobeInfo) nogil

    fc2Error fc2GetStrobe(fc2Context context, fc2StrobeControl *strobeControl) nogil

    fc2Error fc2SetStrobe(fc2Context context, fc2StrobeControl *strobeControl) nogil

    fc2Error fc2SetStrobeBroadcast(fc2Context context, fc2StrobeControl *strobeControl) nogil

    fc2Error fc2GetVideoModeAndFrameRateInfo(fc2Context context, fc2VideoMode videoMode, fc2FrameRate frameRate, BOOL *pSupported) nogil

    fc2Error fc2GetVideoModeAndFrameRate(fc2Context context, fc2VideoMode *videoMode, fc2FrameRate *frameRate) nogil

    fc2Error fc2SetVideoModeAndFrameRate(fc2Context context, fc2VideoMode videoMode, fc2FrameRate frameRate) nogil

    fc2Error fc2GetFormat7Info(fc2Context context, fc2Format7Info *info, BOOL *pSupported) nogil

    fc2Error fc2ValidateFormat7Settings(fc2Context context, fc2Format7ImageSettings *imageSettings, BOOL *settingsAreValid, fc2Format7PacketInfo *packetInfo) nogil

    fc2Error fc2GetFormat7Configuration(fc2Context context, fc2Format7ImageSettings *imageSettings, unsigned int *packetSize, float *percentage) nogil

    fc2Error fc2SetFormat7ConfigurationPacket(fc2Context context, fc2Format7ImageSettings *imageSettings, unsigned int packetSize) nogil

    fc2Error fc2SetFormat7Configuration(fc2Context context, fc2Format7ImageSettings *imageSettings, float percentSpeed) nogil

    fc2Error fc2WriteGVCPRegister(fc2Context context, unsigned int address, unsigned int value) nogil

    fc2Error fc2WriteGVCPRegisterBroadcast(fc2Context context, unsigned int address, unsigned int value) nogil

    fc2Error fc2ReadGVCPRegister(fc2Context context, unsigned int address, unsigned int *pValue) nogil

    fc2Error fc2WriteGVCPRegisterBlock(fc2Context context, unsigned int address, unsigned int *pBuffer, unsigned int length) nogil

    fc2Error fc2ReadGVCPRegisterBlock(fc2Context context, unsigned int address, unsigned int *pBuffer, unsigned int length) nogil

    fc2Error fc2WriteGVCPMemory(fc2Context context, unsigned int address, unsigned char *pBuffer, unsigned int length) nogil

    fc2Error fc2ReadGVCPMemory(fc2Context context, unsigned int address, unsigned char *pBuffer, unsigned int length) nogil

    fc2Error fc2GetGigEProperty(fc2Context context, fc2GigEProperty *pGigEProp) nogil

    fc2Error fc2SetGigEProperty(fc2Context context, fc2GigEProperty *pGigEProp) nogil

    fc2Error fc2QueryGigEImagingMode(fc2Context context, fc2Mode mode, BOOL *isSupported) nogil

    fc2Error fc2GetGigEImagingMode(fc2Context context, fc2Mode *mode) nogil

    fc2Error fc2SetGigEImagingMode(fc2Context context, fc2Mode mode) nogil

    fc2Error fc2GetGigEImageSettingsInfo(fc2Context context, fc2GigEImageSettingsInfo *pInfo) nogil

    fc2Error fc2GetGigEImageSettings(fc2Context context, fc2GigEImageSettings *pImageSettings) nogil

    fc2Error fc2SetGigEImageSettings(fc2Context context, fc2GigEImageSettings *pImageSettings) nogil

    fc2Error fc2GetGigEImageBinningSettings(fc2Context context, unsigned int *horzBinnningValue, unsigned int *vertBinnningValue) nogil

    fc2Error fc2SetGigEImageBinningSettings(fc2Context context, unsigned int horzBinnningValue, unsigned int vertBinnningValue) nogil

    fc2Error fc2GetNumStreamChannels(fc2Context context, unsigned int *numChannels) nogil

    fc2Error fc2GetGigEStreamChannelInfo(fc2Context context, unsigned int channel, fc2GigEStreamChannel *pChannel) nogil

    fc2Error fc2SetGigEStreamChannelInfo(fc2Context context, unsigned int channel, fc2GigEStreamChannel *pChannel) nogil

    fc2Error fc2GetLUTInfo(fc2Context context, fc2LUTData *pData) nogil

    fc2Error fc2GetLUTBankInfo(fc2Context context, unsigned int bank, BOOL *pReadSupported, BOOL *pWriteSupported) nogil

    fc2Error fc2GetActiveLUTBank(fc2Context context, unsigned int *pActiveBank) nogil

    fc2Error fc2SetActiveLUTBank(fc2Context context, unsigned int activeBank) nogil

    fc2Error fc2EnableLUT(fc2Context context, BOOL on) nogil

    fc2Error fc2GetLUTChannel(fc2Context context, unsigned int bank, unsigned int channel, unsigned int sizeEntries, unsigned int *pEntries) nogil

    fc2Error fc2SetLUTChannel(fc2Context context, unsigned int bank, unsigned int channel, unsigned int sizeEntries, unsigned int *pEntries) nogil

    fc2Error fc2GetMemoryChannel(fc2Context context, unsigned int *pCurrentChannel) nogil

    fc2Error fc2SaveToMemoryChannel(fc2Context context, unsigned int channel) nogil

    fc2Error fc2RestoreFromMemoryChannel(fc2Context context, unsigned int channel) nogil

    fc2Error fc2GetMemoryChannelInfo(fc2Context context, unsigned int *pNumChannels) nogil

    fc2Error fc2GetEmbeddedImageInfo(fc2Context context, fc2EmbeddedImageInfo *pInfo) nogil

    fc2Error fc2SetEmbeddedImageInfo(fc2Context context, fc2EmbeddedImageInfo *pInfo) nogil

    char *fc2GetRegisterString(unsigned int registerVal) nogil

    fc2Error fc2CreateImage(fc2Image *pImage) nogil

    fc2Error fc2DestroyImage(fc2Image *image) nogil

    fc2Error fc2SetDefaultColorProcessing(fc2ColorProcessingAlgorithm defaultMethod) nogil

    fc2Error fc2GetDefaultColorProcessing(fc2ColorProcessingAlgorithm *pDefaultMethod) nogil

    fc2Error fc2SetDefaultOutputFormat(fc2PixelFormat format) nogil

    fc2Error fc2GetDefaultOutputFormat(fc2PixelFormat *pFormat) nogil

    fc2Error fc2DetermineBitsPerPixel(fc2PixelFormat format, unsigned int *pBitsPerPixel) nogil

    fc2Error fc2SaveImage(fc2Image *pImage, char *pFilename, fc2ImageFileFormat format) nogil

    fc2Error fc2SaveImageWithOption(fc2Image *pImage, char *pFilename, fc2ImageFileFormat format, void *pOption) nogil

    fc2Error fc2ConvertImage(fc2Image *pImageIn, fc2Image *pImageOut) nogil

    fc2Error fc2ConvertImageTo(fc2PixelFormat format, fc2Image *pImageIn, fc2Image *pImageOut) nogil

    fc2Error fc2GetImageData(fc2Image *pImage, unsigned char **ppData) nogil

    fc2Error fc2SetImageData(fc2Image *pImage, unsigned char *pData, unsigned int dataSize) nogil

    fc2Error fc2SetImageDimensions(fc2Image *pImage, unsigned int rows, unsigned int cols, unsigned int stride, fc2PixelFormat pixelFormat, fc2BayerTileFormat bayerFormat) nogil

    fc2TimeStamp fc2GetImageTimeStamp(fc2Image *pImage) nogil

    fc2Error fc2CalculateImageStatistics(fc2Image *pImage, fc2ImageStatisticsContext *pImageStatisticsContext) nogil

    fc2Error fc2CreateImageStatistics(fc2ImageStatisticsContext *pImageStatisticsContext) nogil

    fc2Error fc2DestroyImageStatistics(fc2ImageStatisticsContext imageStatisticsContext) nogil

    fc2Error fc2GetImageStatistics(fc2ImageStatisticsContext imageStatisticsContext, fc2StatisticsChannel channel, unsigned int *pRangeMin, unsigned int *pRangeMax, unsigned int *pPixelValueMin, unsigned int *pPixelValueMax, unsigned int *pNumPixelValues, float *pPixelValueMean, int **ppHistogram) nogil

    fc2Error fc2CreateAVI(fc2AVIContext *pAVIContext) nogil

    fc2Error fc2AVIOpen(fc2AVIContext AVIContext, char *pFileName, fc2AVIOption *pOption) nogil

    fc2Error fc2AVIAppend(fc2AVIContext AVIContext, fc2Image *pImage) nogil

    fc2Error fc2AVIClose(fc2AVIContext AVIContext) nogil

    fc2Error fc2DestroyAVI(fc2AVIContext AVIContext) nogil

    fc2Error fc2GetSystemInfo(fc2SystemInfo *pSystemInfo) nogil

    fc2Error fc2GetLibraryVersion(fc2Version *pVersion) nogil

    fc2Error fc2LaunchBrowser(char *pAddress) nogil

    fc2Error fc2LaunchHelp(char *pFileName) nogil

    fc2Error fc2LaunchCommand(char *pCommand) nogil

    fc2Error fc2LaunchCommandAsync(char *pCommand, fc2AsyncCommandCallback pCallback, void *pUserData) nogil

    char *fc2ErrorToDescription(fc2Error error)


