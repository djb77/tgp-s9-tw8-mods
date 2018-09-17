.class public Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;
.super Ljava/lang/Object;
.source "MdfPolicy.java"


# static fields
.field private static final MDF_DISABLED:I = 0x8

.field private static final MDF_EMPTY:I = 0x10

.field private static final MDF_ENABLED:I = 0x1

.field private static final MDF_ENFORCE_SECUREBOOT_OFF:I = 0x0

.field private static final MDF_ENFORCE_SECUREBOOT_ON:I = 0x1

.field private static final MDF_ENFORCING:I = 0x2

.field private static final MDF_ERR_BORINGSSL_SELFTEST_FAIL:I = -0x14

.field private static final MDF_ERR_CCMODE_ALREADY_ENABLED:I = -0xe

.field private static final MDF_ERR_CCMODE_ALREADY_READY:I = -0xf

.field private static final MDF_ERR_CCMODE_DISABLED:I = -0xb

.field private static final MDF_ERR_CCMODE_ELSE:I = -0xd

.field private static final MDF_ERR_CCMODE_EMPTY:I = -0xc

.field public static final MDF_ERR_CCMODE_NOT_SUPPORT_CCMODE:I = -0x10

.field private static final MDF_ERR_ENFORCE_SB_FLAG_FAIL:I = -0x18

.field private static final MDF_ERR_GET_CCMODE_FLAG_FAIL:I = -0x1c

.field private static final MDF_ERR_GET_FIPS_STATUS_FAIL:I = -0x23

.field private static final MDF_ERR_ICD_FILE_NOT_EXIST:I = -0x16

.field private static final MDF_ERR_ICD_RESULT_INVALID:I = -0x17

.field private static final MDF_ERR_INTEGRITY_CHECK_FAIL:I = -0x15

.field private static final MDF_ERR_INVALID_INPUT:I = -0x1

.field private static final MDF_ERR_LOCK_FINGER_PRINT_SET:I = -0x27

.field public static final MDF_ERR_NULL_POINTER:I = -0x2

.field private static final MDF_ERR_SET_CCMODE_FLAG_FAIL:I = -0x1b

.field private static final MDF_ERR_SYSTEMPROPERTY_EXCEPTION:I = -0x3

.field public static final MDF_INTENT_UPDATE:Ljava/lang/String; = "com.samsung.android.security.mdf.MDF_UPDATE"

.field public static final MDF_OK:I = 0x0

.field private static final MDF_POLICY_ERR_DIRECTION_LOCK_ON:I = 0x1

.field private static final MDF_POLICY_ERR_FACE_LOCK_ON:I = 0x1000

.field private static final MDF_POLICY_ERR_ODE_ENCRYPTED_DEFAULT:I = 0x100

.field private static final MDF_POLICY_ERR_ODE_ENCRYPTED_EXTERNAL_FAST:I = 0x40

.field private static final MDF_POLICY_ERR_ODE_ENCRYPTED_FAST:I = 0x200

.field private static final MDF_POLICY_ERR_ODE_ENCRYPTED_INTERNAL:I = 0x80

.field private static final MDF_POLICY_ERR_ODE_GETTING_STATUS_FAIL:I = 0x400

.field private static final MDF_POLICY_ERR_ODE_NOT_SET:I = 0x800

.field private static final MDF_POLICY_ERR_OUT_OF_RANGE_OF_MAX_PW_COUNT:I = 0x2

.field private static final MDF_POLICY_ERR_PASSWORD_HISTORY_LENGTH_SET:I = 0x10

.field private static final MDF_POLICY_ERR_RECOVERY_PASSWORD_POLICY_SET:I = 0x8

.field private static final MDF_POLICY_ERR_REVOCATION_CHECK_POLICY_SET:I = 0x20

.field private static final MDF_POLICY_ERR_SCREENLOCK_NOT_SET:I = 0x4

.field private static final MDF_READY:I = 0x4

.field private static final PROPERTY_MDF:Ljava/lang/String; = "security.mdf"

.field private static final PROPERTY_MDF_DISABLED:Ljava/lang/String; = "Disabled"

.field private static final PROPERTY_MDF_EMPTY:Ljava/lang/String; = "None"

.field private static final PROPERTY_MDF_ENABLED:Ljava/lang/String; = "Enabled"

.field private static final PROPERTY_MDF_ENFORCING:Ljava/lang/String; = "Enforcing"

.field private static final PROPERTY_MDF_READY:Ljava/lang/String; = "Ready"

.field private static final PROPERTY_MDF_RESULT:Ljava/lang/String; = "security.mdf.result"

.field private static final PROPERTY_MDF_UX:Ljava/lang/String; = "ro.security.mdf.ux"

.field public static final SERVICE_VERSION:Ljava/lang/String; = "v3.8.2"

.field public static final TAG:Ljava/lang/String; = "MdfService"


# instance fields
.field private mCP:Lcom/samsung/android/knox/keystore/CertificatePolicy;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mLPU:Lcom/android/internal/widget/LockPatternUtils;

.field private mPP:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

.field private mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->printVersion()V

    iput-object p1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mLPU:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getCertificatePolicy()Lcom/samsung/android/knox/keystore/CertificatePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mCP:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mPP:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    new-instance v0, Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-direct {v0}, Lcom/samsung/android/security/mdf/MdfUtils;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    return-void
.end method

.method private checkCCModeOnDevice()I
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v2}, Lcom/samsung/android/security/mdf/MdfUtils;->getCCModeFlag()I

    move-result v0

    const-string/jumbo v2, "MdfService"

    const-string/jumbo v3, "check the current status #1 ..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    const/4 v1, 0x1

    :goto_14
    return v1

    :cond_15
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    const/4 v1, 0x2

    goto :goto_14

    :cond_1a
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1f

    const/4 v1, 0x4

    goto :goto_14

    :cond_1f
    const/16 v2, 0x8

    if-ne v0, v2, :cond_26

    const/16 v1, 0x8

    goto :goto_14

    :cond_26
    const/4 v1, 0x4

    goto :goto_14
.end method

.method private checkDevicePolicy()I
    .registers 15

    const/4 v10, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v11

    const-string/jumbo v12, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_DIRECTION_LOCK"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v11, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mLPU:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->isLockDirectionEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_cc

    const-string/jumbo v11, "Direction lock : Direction lock should not be set."

    const/4 v12, 0x1

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    const/4 v10, 0x1

    :cond_24
    :goto_24
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getMaximumFailedPasswordsForWipe()I

    move-result v7

    if-lez v7, :cond_2e

    const/16 v11, 0x32

    if-le v7, v11, :cond_d6

    :cond_2e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Password attempts : setMaximumFailedPasswordsForWipe() should be set between 1 and 50. Current value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit8 v10, v10, 0x2

    :goto_4d
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getPasswordQuality()I

    move-result v9

    const/high16 v11, 0x50000

    if-eq v9, v11, :cond_e0

    const/high16 v11, 0x60000

    if-eq v9, v11, :cond_e0

    const-string/jumbo v11, "Password Quality : setPasswordQuality() should be set to alphanumeric or complex."

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit8 v10, v10, 0x4

    :goto_63
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getPasswordRecoverable()I

    move-result v4

    const/4 v11, 0x1

    if-eq v4, v11, :cond_ea

    const-string/jumbo v11, "Recovery password : semSetPasswordRecoverable() should be set to false."

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit8 v10, v10, 0x8

    :goto_74
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getPasswordHistoryLength()I

    move-result v8

    if-eqz v8, :cond_f3

    const-string/jumbo v11, "Password history length : setPasswordHistoryLength() should be set to 0."

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit8 v10, v10, 0x10

    :goto_84
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isRevocationCheckEnabled()I

    move-result v5

    if-eqz v5, :cond_fc

    const-string/jumbo v11, "Certificate revocation : enableRevocationCheck() should be set on all packages."

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit8 v10, v10, 0x20

    :goto_94
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getSamsungEncryptionStatusForCC()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isExternalSDRemovable()Z

    move-result v1

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v1, :cond_aa

    iget-object v11, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v6

    :cond_aa
    if-eqz v2, :cond_11b

    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isPasswordEnabled()I

    move-result v11

    if-nez v11, :cond_110

    if-eqz v6, :cond_105

    const-string/jumbo v11, "Device encryption : OK"

    const/4 v12, 0x5

    const/4 v13, 0x4

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    :goto_bc
    iget-object v11, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mLPU:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v11, :cond_185

    const-string/jumbo v11, "MdfService"

    const-string/jumbo v12, "Face lock : check error. mLPU is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit16 v10, v10, 0x1000

    :goto_cb
    return v10

    :cond_cc
    const-string/jumbo v11, "Direction lock : OK"

    const/4 v12, 0x5

    const/4 v13, 0x4

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto/16 :goto_24

    :cond_d6
    const-string/jumbo v11, "Password attempts : OK"

    const/4 v12, 0x5

    const/4 v13, 0x4

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto/16 :goto_4d

    :cond_e0
    const-string/jumbo v11, "Password Quality : OK"

    const/4 v12, 0x5

    const/4 v13, 0x4

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto/16 :goto_63

    :cond_ea
    const-string/jumbo v11, "Recovery password : OK"

    const/4 v12, 0x5

    const/4 v13, 0x4

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_74

    :cond_f3
    const-string/jumbo v11, "Password history length : OK"

    const/4 v12, 0x5

    const/4 v13, 0x4

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_84

    :cond_fc
    const-string/jumbo v11, "Certificate revocation : OK"

    const/4 v12, 0x5

    const/4 v13, 0x4

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_94

    :cond_105
    const-string/jumbo v11, "Device encryption : setRequireStorageCardEncryption() should be set to true."

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit16 v10, v10, 0x80

    goto :goto_bc

    :cond_110
    or-int/lit16 v10, v10, 0x100

    const-string/jumbo v11, "Device encryption : Secure Startup should be set."

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_bc

    :cond_11b
    packed-switch v0, :pswitch_data_1a4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Device encryption : unexpected status. Status value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit16 v10, v10, 0x800

    goto/16 :goto_bc

    :pswitch_13f
    const-string/jumbo v11, "Device encryption : OK"

    const/4 v12, 0x5

    const/4 v13, 0x4

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto/16 :goto_bc

    :pswitch_149
    if-eqz v6, :cond_155

    const-string/jumbo v11, "Device encryption : OK"

    const/4 v12, 0x5

    const/4 v13, 0x4

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto/16 :goto_bc

    :cond_155
    const-string/jumbo v11, "Device encryption : setRequireStorageCardEncryption() should be set to true."

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit16 v10, v10, 0x80

    goto/16 :goto_bc

    :pswitch_161
    const-string/jumbo v11, "Device encryption : Secure Startup should be set."

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit16 v10, v10, 0x100

    goto/16 :goto_bc

    :pswitch_16d
    const-string/jumbo v11, "Device encryption : fast encryption should not be set."

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit16 v10, v10, 0x200

    goto/16 :goto_bc

    :pswitch_179
    const-string/jumbo v11, "Device encryption : encryption status is FULLY_ENCRYPTED_ERROR."

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit16 v10, v10, 0x400

    goto/16 :goto_bc

    :cond_185
    iget-object v11, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mPP:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isBiometricAuthenticationEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_19a

    const-string/jumbo v11, "Face lock : BIOMETRIC_AUTHENTICATION_FACE should be set to false in the setBiometricAuthenticationEnabled()."

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit16 v10, v10, 0x1000

    goto/16 :goto_cb

    :cond_19a
    const-string/jumbo v11, "Face lock : OK"

    const/4 v12, 0x5

    const/4 v13, 0x4

    invoke-direct {p0, v12, v13, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto/16 :goto_cb

    :pswitch_data_1a4
    .packed-switch -0x1
        :pswitch_179
        :pswitch_16d
        :pswitch_13f
        :pswitch_149
        :pswitch_161
    .end packed-switch
.end method

.method private checkICD()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v1}, Lcom/samsung/android/security/mdf/MdfUtils;->getTamperFlag()I

    move-result v0

    if-gez v0, :cond_15

    const-string/jumbo v1, "MdfService"

    const-string/jumbo v2, "Failed to get icd tamper"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x16

    return v1

    :cond_15
    if-lez v0, :cond_23

    const-string/jumbo v1, "MdfService"

    const-string/jumbo v2, "Failed. icd tamper is set"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x17

    return v1

    :cond_23
    return v0
.end method

.method private checkIntegrity()I
    .registers 7

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkICD()I

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "Integrity verification : FAILED"

    invoke-direct {p0, v2, v3, v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    const/16 v0, -0x15

    return v0

    :cond_14
    const-string/jumbo v0, "Integrity verification : OK"

    invoke-direct {p0, v5, v4, v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v0}, Lcom/samsung/android/security/mdf/MdfUtils;->getFipsStatus()I

    move-result v0

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "FIPS self-test : FAILED"

    invoke-direct {p0, v2, v3, v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    const/16 v0, -0x23

    return v0

    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v0}, Lcom/samsung/android/security/mdf/MdfUtils;->FIPS_Openssl_SelfTest()I

    move-result v0

    if-eqz v0, :cond_3c

    const-string/jumbo v0, "FIPS self-test : FAILED"

    invoke-direct {p0, v2, v3, v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    const/16 v0, -0x14

    return v0

    :cond_3c
    const-string/jumbo v0, "FIPS self-test : OK"

    invoke-direct {p0, v5, v4, v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    return v1
.end method

.method private checkSystemUid()V
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_11

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Security Exception Occurred. Only SYSTEM can use the MdfService."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    return-void
.end method

.method private enforceSB(Z)I
    .registers 8

    const/16 v5, -0x18

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_55

    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v2}, Lcom/samsung/android/security/mdf/MdfUtils;->setSBFlagOn()I

    move-result v0

    if-eqz v0, :cond_2d

    const-string/jumbo v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed. setSBFlagOn() res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2d
    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v2}, Lcom/samsung/android/security/mdf/MdfUtils;->getSBFlag()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a3

    const-string/jumbo v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed. SBFlag has yet to set. current flag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_55
    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v2}, Lcom/samsung/android/security/mdf/MdfUtils;->setSBFlagOff()I

    move-result v0

    if-eqz v0, :cond_7c

    const-string/jumbo v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed. setSBFlagOff() res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_7c
    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v2}, Lcom/samsung/android/security/mdf/MdfUtils;->getSBFlag()I

    move-result v1

    if-eqz v1, :cond_a3

    const-string/jumbo v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed. SBFlag has yet to set. current flag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_a3
    return v0
.end method

.method private getMaximumFailedPasswordsForWipe()I
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    return v0

    :cond_c
    const-string/jumbo v0, "MdfService"

    const-string/jumbo v1, "DPM is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method private getPasswordHistoryLength()I
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0

    :cond_c
    const-string/jumbo v0, "MdfService"

    const-string/jumbo v1, "DPM is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method private getPasswordQuality()I
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    return v0

    :cond_c
    const-string/jumbo v0, "MdfService"

    const-string/jumbo v1, "DPM is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method private getPasswordRecoverable()I
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->semIsPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    return v0

    :cond_f
    const/4 v0, 0x1

    return v0

    :cond_11
    const-string/jumbo v0, "MdfService"

    const-string/jumbo v1, "DPM is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method private getSamsungEncryptionStatusForCC()I
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatusForCC(Landroid/content/ComponentName;)I

    move-result v0

    return v0

    :cond_c
    const-string/jumbo v0, "MdfService"

    const-string/jumbo v1, "DPM is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method private getString(I)Ljava/lang/String;
    .registers 18

    const-string/jumbo v12, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    and-int/lit8 v13, p1, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_12

    const/4 v1, 0x1

    :cond_12
    and-int/lit8 v13, p1, 0x2

    const/4 v14, 0x2

    if-ne v13, v14, :cond_18

    const/4 v8, 0x1

    :cond_18
    and-int/lit8 v13, p1, 0x4

    const/4 v14, 0x4

    if-ne v13, v14, :cond_1e

    const/4 v9, 0x1

    :cond_1e
    and-int/lit8 v13, p1, 0x8

    const/16 v14, 0x8

    if-ne v13, v14, :cond_25

    const/4 v4, 0x1

    :cond_25
    and-int/lit8 v13, p1, 0x10

    const/16 v14, 0x10

    if-ne v13, v14, :cond_2c

    const/4 v3, 0x1

    :cond_2c
    and-int/lit8 v13, p1, 0x20

    const/16 v14, 0x20

    if-ne v13, v14, :cond_33

    const/4 v10, 0x1

    :cond_33
    and-int/lit8 v13, p1, 0x40

    const/16 v14, 0x40

    if-ne v13, v14, :cond_3a

    const/4 v7, 0x1

    :cond_3a
    move/from16 v0, p1

    and-int/lit16 v13, v0, 0x80

    const/16 v14, 0x80

    if-ne v13, v14, :cond_43

    const/4 v7, 0x1

    :cond_43
    move/from16 v0, p1

    and-int/lit16 v13, v0, 0x100

    const/16 v14, 0x100

    if-ne v13, v14, :cond_4c

    const/4 v6, 0x1

    :cond_4c
    move/from16 v0, p1

    and-int/lit16 v13, v0, 0x200

    const/16 v14, 0x200

    if-ne v13, v14, :cond_55

    const/4 v6, 0x1

    :cond_55
    move/from16 v0, p1

    and-int/lit16 v13, v0, 0x400

    const/16 v14, 0x400

    if-ne v13, v14, :cond_5f

    const/4 v7, 0x1

    const/4 v6, 0x1

    :cond_5f
    move/from16 v0, p1

    and-int/lit16 v13, v0, 0x800

    const/16 v14, 0x800

    if-ne v13, v14, :cond_69

    const/4 v7, 0x1

    const/4 v6, 0x1

    :cond_69
    move/from16 v0, p1

    and-int/lit16 v13, v0, 0x1000

    const/16 v14, 0x1000

    if-ne v13, v14, :cond_72

    const/4 v2, 0x1

    :cond_72
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v13

    if-nez v13, :cond_84

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isExternalSDRemovable()Z

    move-result v13

    if-eqz v13, :cond_84

    const/4 v7, 0x1

    :cond_84
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10404f7

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v11, ""

    const-string/jumbo v5, ""

    if-nez v8, :cond_b7

    if-nez v9, :cond_b7

    if-nez v10, :cond_b7

    if-nez v6, :cond_b7

    if-eqz v7, :cond_205

    :cond_b7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10404f3

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-eqz v8, :cond_11c

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10404fa

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-nez v9, :cond_108

    if-nez v10, :cond_108

    if-nez v6, :cond_108

    if-eqz v7, :cond_11c

    :cond_108
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_11c
    if-eqz v9, :cond_158

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10404fb

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-nez v10, :cond_144

    if-nez v6, :cond_144

    if-eqz v7, :cond_158

    :cond_144
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_158
    if-eqz v10, :cond_192

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10404fd

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-nez v6, :cond_17e

    if-eqz v7, :cond_192

    :cond_17e
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_192
    if-eqz v6, :cond_1ce

    xor-int/lit8 v13, v1, 0x1

    if-eqz v13, :cond_1ce

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10404f4

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-eqz v7, :cond_1ce

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_1ce
    if-eqz v7, :cond_1f4

    xor-int/lit8 v13, v1, 0x1

    if-eqz v13, :cond_1f4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10404f5

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_1f4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_205
    if-nez v4, :cond_20d

    if-nez v3, :cond_20d

    if-nez v1, :cond_20d

    if-eqz v2, :cond_332

    :cond_20d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10404f2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_270

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10404f9

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_25c

    if-nez v1, :cond_25c

    if-eqz v2, :cond_270

    :cond_25c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_270
    if-eqz v3, :cond_2aa

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10404f8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v1, :cond_296

    if-eqz v2, :cond_2aa

    :cond_296
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2aa
    if-eqz v1, :cond_2e2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10404f1

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_2e2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2e2
    if-eqz v2, :cond_304

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10404f6

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_304
    const-string/jumbo v13, ""

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_321

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_321
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_332
    return-object v12
.end method

.method private isExternalSDRemovable()Z
    .registers 3

    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "MdfService"

    const-string/jumbo v1, "SDCARD SLOT Support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_11
    const-string/jumbo v0, "MdfService"

    const-string/jumbo v1, "SDCARD SLOT None"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private isPasswordEnabled()I
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mLPU:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mLPU:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_14

    const/4 v0, 0x0

    return v0

    :cond_14
    const/4 v0, 0x1

    return v0

    :cond_16
    const-string/jumbo v0, "MdfService"

    const-string/jumbo v1, "LPU is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method private isRevocationCheckEnabled()I
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mCP:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mCP:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->isRevocationCheckEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    return v0

    :cond_11
    const/4 v0, 0x1

    return v0

    :cond_13
    const-string/jumbo v0, "MdfService"

    const-string/jumbo v1, "certPolicy is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method private logForAudit(ILjava/lang/String;)V
    .registers 9

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "MdfStatus"

    const/4 v0, 0x1

    const/4 v2, 0x0

    move v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logForAuditAndLogcat(IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAudit(ILjava/lang/String;)V

    const-string/jumbo v0, "MdfService"

    invoke-static {p2, v0, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private printVersion()V
    .registers 3

    const-string/jumbo v0, "MdfService"

    const-string/jumbo v1, "v3.8.2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setCCMode(I)I
    .registers 12

    const/4 v9, -0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "None"

    sparse-switch p1, :sswitch_data_b8

    const/4 v5, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "None"

    const-string/jumbo v6, "MdfService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setCCMode default... status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    invoke-direct {p0, v5, v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setFlags(ZI)I

    move-result v4

    if-eqz v4, :cond_54

    return v4

    :sswitch_34
    const/4 v5, 0x1

    const/4 v0, 0x1

    const-string/jumbo v1, "Enabled"

    goto :goto_2d

    :sswitch_3a
    const/4 v5, 0x1

    const/4 v0, 0x2

    const-string/jumbo v1, "Enforcing"

    goto :goto_2d

    :sswitch_40
    const/4 v5, 0x0

    const/4 v0, 0x4

    const-string/jumbo v1, "Ready"

    goto :goto_2d

    :sswitch_46
    const/4 v5, 0x1

    const/16 v0, 0x8

    const-string/jumbo v1, "Disabled"

    goto :goto_2d

    :sswitch_4d
    const/4 v5, 0x0

    const/16 v0, 0x10

    const-string/jumbo v1, "None"

    goto :goto_2d

    :cond_54
    :try_start_54
    const-string/jumbo v6, "security.mdf"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_67

    const-string/jumbo v6, "security.mdf"

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CC Mode status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-direct {p0, v7, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAudit(ILjava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_7f} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_7f} :catch_a1

    const-string/jumbo v6, "MdfService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "security.mdf : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "security.mdf"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catch_a1
    move-exception v2

    const-string/jumbo v6, "MdfService"

    const-string/jumbo v7, "SystemProperties Exception Occurs"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :catch_ac
    move-exception v3

    const-string/jumbo v6, "MdfService"

    const-string/jumbo v7, "SystemProperties RuntimeException Occurs"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    nop

    :sswitch_data_b8
    .sparse-switch
        0x1 -> :sswitch_34
        0x2 -> :sswitch_3a
        0x4 -> :sswitch_40
        0x8 -> :sswitch_46
        0x10 -> :sswitch_4d
    .end sparse-switch
.end method

.method private setCCModeFlags(I)I
    .registers 8

    const/16 v5, -0x1b

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v2, p1}, Lcom/samsung/android/security/mdf/MdfUtils;->setCCModeFlag(I)I

    move-result v1

    if-eqz v1, :cond_2a

    const-string/jumbo v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed. setCCModeFlag() res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2a
    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v2}, Lcom/samsung/android/security/mdf/MdfUtils;->getCCModeFlag()I

    move-result v0

    if-eq v0, p1, :cond_51

    const-string/jumbo v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed. CCMode Flag has yet to set. current flag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_51
    return v1
.end method

.method private setFlags(ZI)I
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->enforceSB(Z)I

    move-result v0

    if-eqz v0, :cond_31

    const-string/jumbo v1, "MdfService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. enforceSB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_31
    invoke-direct {p0, p2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCModeFlags(I)I

    move-result v0

    if-eqz v0, :cond_65

    const-string/jumbo v1, "MdfService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCModeFlag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_65
    return v0
.end method

.method private setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    const-string/jumbo v12, "MdfService"

    const-string/jumbo v13, "Notice for applying security policy"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "notification"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    if-nez v5, :cond_20

    const-string/jumbo v12, "MdfService"

    const-string/jumbo v13, "NotificationManager is null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    const-string/jumbo v2, "mdf_channel_id"

    const-string/jumbo v3, "Mdf Channel"

    const/4 v4, 0x4

    new-instance v7, Landroid/app/NotificationChannel;

    invoke-direct {v7, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v12, 0x2

    new-array v12, v12, [J

    fill-array-data v12, :array_c2

    invoke-virtual {v7, v12}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    invoke-virtual {v5, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v12, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v6, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v12, 0x1080027

    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    const-string/jumbo v12, ""

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b2

    iget-object v12, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10404fc

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.android.security.mdf.MDF_UPDATE"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x1000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v12, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/high16 v14, 0x8000000

    invoke-static {v12, v13, v11, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v12, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    const v13, 0x1080027

    invoke-static {v12, v13}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v12

    invoke-direct {v1, v12, v9, v8}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    new-instance v10, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v10}, Landroid/app/Notification$BigTextStyle;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_b2
    iget-object v12, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :array_c2
    .array-data 8
        0x0
        0x1f4
    .end array-data
.end method


# virtual methods
.method public enableCCMode(Z)I
    .registers 11

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/16 v5, 0x10

    const/4 v1, 0x0

    const-string/jumbo v2, "security.mdf.result"

    const-string/jumbo v3, "None"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isCCModeSupport()Z

    move-result v2

    if-nez v2, :cond_2c

    const-string/jumbo v2, "MdfService"

    const-string/jumbo v3, "This model does not support CC mode."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x10

    const-string/jumbo v2, "security.mdf.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2c
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkCCModeOnDevice()I

    move-result v0

    const-string/jumbo v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the current mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1e1

    if-ne v0, v7, :cond_5c

    const-string/jumbo v2, "MdfService"

    const-string/jumbo v3, "CCMode is already enabled."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5c
    if-eq v0, v8, :cond_61

    const/4 v2, 0x2

    if-ne v0, v2, :cond_148

    :cond_61
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkDevicePolicy()I

    move-result v1

    const-string/jumbo v2, "security.mdf.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_8f

    const-string/jumbo v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Prerequisite policies have yet to set. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkIntegrity()I

    move-result v1

    const-string/jumbo v2, "security.mdf.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_102

    const-string/jumbo v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed. check integrity. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040500

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10404fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_101

    const-string/jumbo v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_101
    :goto_101
    return v1

    :cond_102
    invoke-direct {p0, v7}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_127

    const-string/jumbo v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_101

    :cond_127
    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10404ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10404ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_101

    :cond_148
    if-ne v0, v5, :cond_17b

    invoke-direct {p0, v5}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_16e

    const-string/jumbo v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16e
    const/16 v1, -0xc

    const-string/jumbo v2, "security.mdf.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_101

    :cond_17b
    if-ne v0, v6, :cond_1af

    invoke-direct {p0, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_1a1

    const-string/jumbo v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a1
    const/16 v1, -0xb

    const-string/jumbo v2, "security.mdf.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_101

    :cond_1af
    invoke-direct {p0, v5}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_1d3

    const-string/jumbo v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d3
    const/16 v1, -0xd

    const-string/jumbo v2, "security.mdf.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_101

    :cond_1e1
    if-eq v0, v7, :cond_1e6

    const/4 v2, 0x2

    if-ne v0, v2, :cond_236

    :cond_1e6
    invoke-direct {p0, v8}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_20a

    const-string/jumbo v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20a
    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10404ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10404f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "security.mdf.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_101

    :cond_236
    if-ne v0, v8, :cond_242

    const-string/jumbo v2, "MdfService"

    const-string/jumbo v3, "CCMode is already ready."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_242
    if-ne v0, v6, :cond_296

    invoke-direct {p0, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040500

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10404fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_288

    const-string/jumbo v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_288
    const/16 v1, -0xb

    const-string/jumbo v2, "security.mdf.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_101

    :cond_296
    if-ne v0, v5, :cond_2ca

    invoke-direct {p0, v5}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_2bc

    const-string/jumbo v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2bc
    const/16 v1, -0xc

    const-string/jumbo v2, "security.mdf.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_101

    :cond_2ca
    invoke-direct {p0, v5}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_2ee

    const-string/jumbo v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2ee
    const/16 v1, -0xd

    const-string/jumbo v2, "security.mdf.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_101
.end method

.method public initCCMode()I
    .registers 10

    const/4 v8, 0x4

    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v2, 0x0

    :try_start_6
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkSystemUid()V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_9} :catch_9a

    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkCCModeOnDevice()I

    move-result v0

    const-string/jumbo v3, "MdfService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "current mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_31

    const/4 v3, 0x2

    if-ne v0, v3, :cond_c4

    :cond_31
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkIntegrity()I

    move-result v2

    if-eqz v2, :cond_9f

    const-string/jumbo v3, "MdfService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed. check integrity. res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040500

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10404fe

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v2

    if-eqz v2, :cond_99

    const-string/jumbo v3, "MdfService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed. setCCMode. res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_99
    :goto_99
    return v2

    :catch_9a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    throw v1

    :cond_9f
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkDevicePolicy()I

    move-result v2

    if-eqz v2, :cond_99

    const-string/jumbo v3, "MdfService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Prerequisite policies have yet to set. res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    :cond_c4
    if-ne v0, v8, :cond_eb

    invoke-direct {p0, v8}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v2

    if-eqz v2, :cond_99

    const-string/jumbo v3, "MdfService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed. setCCMode. res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    :cond_eb
    if-ne v0, v6, :cond_114

    invoke-direct {p0, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v2

    if-eqz v2, :cond_111

    const-string/jumbo v3, "MdfService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed. setCCMode. res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_111
    const/16 v2, -0xb

    goto :goto_99

    :cond_114
    if-ne v0, v7, :cond_13e

    invoke-direct {p0, v7}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v2

    if-eqz v2, :cond_13a

    const-string/jumbo v3, "MdfService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed. setCCMode. res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13a
    const/16 v2, -0xc

    goto/16 :goto_99

    :cond_13e
    invoke-direct {p0, v7}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v2

    if-eqz v2, :cond_162

    const-string/jumbo v3, "MdfService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed. setCCMode. res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_162
    const/16 v2, -0xd

    goto/16 :goto_99
.end method

.method public isCCModeSupport()Z
    .registers 3

    const-string/jumbo v1, "ro.security.mdf.ux"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    return v1

    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method public sendSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.samsung.android.service.SecurityManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_29

    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_39

    const-string/jumbo v2, "value"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v2, "MdfService"

    const-string/jumbo v3, "sendSurveyLog completed."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5e
    return-void

    :cond_5f
    const-string/jumbo v2, "MdfService"

    const-string/jumbo v3, "Survey mode is not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e
.end method

.method public sendSurveyLogMode()V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isCCModeSupport()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string/jumbo v1, "security.mdf"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string/jumbo v1, "MODE"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->sendSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_17
    return-void
.end method

.method public updateNotification()V
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkDevicePolicy()I

    move-result v0

    if-nez v0, :cond_27

    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10404ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10404ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    return-void

    :cond_27
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040500

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10404ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method