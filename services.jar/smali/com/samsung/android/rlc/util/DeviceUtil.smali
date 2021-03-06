.class public Lcom/samsung/android/rlc/util/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# static fields
.field private static final HEX_DIGITS:[C

.field private static final IMEI:Ljava/lang/String; = "IMEI:"

.field private static final MEID:Ljava/lang/String; = "MEID:"

.field private static final TAG:Ljava/lang/String;

.field private static final TWID:Ljava/lang/String; = "TWID:"

.field private static final UTF:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/rlc/util/DeviceUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/samsung/android/rlc/util/DeviceUtil;->HEX_DIGITS:[C

    return-void

    :array_12
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Checksum(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v6, 0xe

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x41

    if-lt v4, v5, :cond_c

    return-object p0

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_65

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v6, :cond_38

    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_24

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_24
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v3, v4, 0x2

    const/16 v4, 0xa

    if-ge v3, v4, :cond_32

    add-int/2addr v2, v3

    goto :goto_21

    :cond_32
    rem-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    goto :goto_21

    :cond_38
    rem-int/lit8 v4, v2, 0xa

    if-nez v4, :cond_4f

    const/4 v0, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_4f
    rem-int/lit8 v4, v2, 0xa

    rsub-int/lit8 v0, v4, 0xa

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_65
    return-object p0
.end method

.method public static getCISSalesCode(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v1, "rlc.sales"

    invoke-static {p0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->getRlcDebugProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/samsung/android/rlc/util/DeviceUtil;->getSalesCodeRegion()Ljava/lang/String;

    move-result-object v0

    :cond_11
    const-string/jumbo v1, "SER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string/jumbo v1, "SKZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string/jumbo v1, "CAC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string/jumbo v1, "SEK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    :cond_35
    const/4 v1, 0x1

    return v1

    :cond_37
    const/4 v1, 0x0

    return v1
.end method

.method public static getData([B)Ljava/lang/String;
    .registers 6

    const-string/jumbo v2, ""

    array-length v4, p0

    add-int/lit8 v4, v4, -0x10

    new-array v3, v4, [B

    const/4 v0, 0x0

    :goto_9
    array-length v4, p0

    add-int/lit8 v4, v4, -0x10

    if-ge v0, v4, :cond_17

    add-int/lit8 v4, v0, 0x10

    aget-byte v4, p0, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    array-length v4, v3

    new-array v1, v4, [B

    const/4 v0, 0x0

    :goto_1b
    array-length v4, v3

    if-ge v0, v4, :cond_25

    aget-byte v4, v3, v0

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_25
    if-eqz v1, :cond_2b

    invoke-static {v1}, Lcom/samsung/android/rlc/util/DeviceUtil;->libToHexString([B)Ljava/lang/String;

    move-result-object v2

    :cond_2b
    return-object v2
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const/16 v6, 0xf

    const/16 v5, 0xe

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getTelephonyManagerWithException(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    :try_start_d
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDeviceIdWithException(Landroid/content/Context;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_38

    move-result-object v1

    :goto_11
    const-string/jumbo v0, "IMEI:"

    if-nez v3, :cond_59

    if-eqz v1, :cond_4b

    const-string/jumbo v4, "000000000000000"

    if-eq v1, v4, :cond_4b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_3d

    const-string/jumbo v0, "MEID:"

    :goto_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :catch_38
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    :cond_3d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_47

    const-string/jumbo v0, "IMEI:"

    goto :goto_26

    :cond_47
    const-string/jumbo v0, "NONE"

    goto :goto_26

    :cond_4b
    const-string/jumbo v4, "ro.serialno"

    const-string/jumbo v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "TWID:"

    goto :goto_26

    :cond_59
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_63

    const-string/jumbo v0, "MEID:"

    goto :goto_26

    :cond_63
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_6d

    const-string/jumbo v0, "IMEI:"

    goto :goto_26

    :cond_6d
    const-string/jumbo v0, "NONE:"

    goto :goto_26
.end method

.method private static getDeviceIDWithoutPrefix(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDeviceIdWithException(Landroid/content/Context;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_1b

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_10

    const-string/jumbo v2, "000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_10
    const-string/jumbo v2, "ro.serialno"

    const-string/jumbo v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    return-object v0

    :catch_1b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public static getDeviceIdWithException(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getIMEIorMEID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDualSIMDeviceID(Landroid/content/Context;Z)[Ljava/lang/String;
    .registers 14

    const/4 v11, 0x0

    const/4 v9, 0x1

    :try_start_2
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getTelephonyManagerWithException(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/samsung/android/rlc/util/RLCUtil;->getIMEI(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e

    sget-object v8, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "There are imeis in rmm area"

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2d

    const/4 v2, 0x0

    :goto_1f
    array-length v8, v3

    if-ge v2, v8, :cond_2d

    aget-object v8, v3, v2

    invoke-static {v8}, Lcom/samsung/android/rlc/util/DeviceUtil;->getHashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2d
    return-object v3

    :cond_2e
    if-le v0, v9, :cond_50

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_33
    if-ge v2, v0, :cond_9b

    if-eqz p1, :cond_44

    invoke-virtual {v7, v2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/rlc/util/DeviceUtil;->getHashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v2

    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_44
    invoke-virtual {v7, v2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v2
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4a} :catch_4b

    goto :goto_41

    :catch_4b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v11

    :cond_50
    if-nez v0, :cond_ab

    :try_start_52
    const-string/jumbo v8, "ril.serialnumber"

    invoke-static {v8}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_68

    const-string/jumbo v8, "00000000000"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9c

    :cond_68
    const-string/jumbo v5, "ro.serialno"

    :goto_6b
    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "WIFI only device : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    if-eqz p1, :cond_a0

    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/rlc/util/DeviceUtil;->getHashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v3, v9

    :cond_9b
    :goto_9b
    return-object v3

    :cond_9c
    const-string/jumbo v5, "ril.serialnumber"

    goto :goto_6b

    :cond_a0
    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v3, v9

    goto :goto_9b

    :cond_ab
    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    if-eqz p1, :cond_bc

    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDeviceIDWithoutPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/rlc/util/DeviceUtil;->getHashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v3, v9

    goto :goto_9b

    :cond_bc
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDeviceIDWithoutPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v3, v9
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_c3} :catch_4b

    goto :goto_9b
.end method

.method public static getHashString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v6, 0x0

    if-nez p0, :cond_4

    return-object v6

    :cond_4
    :try_start_4
    const-string/jumbo v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v4, "\n"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2c} :catch_2e

    move-result-object v3

    return-object v3

    :catch_2e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v6
.end method

.method public static getIMEIorMEID(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getTelephonyManagerWithException(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_15

    return-object v0

    :cond_15
    if-eqz v0, :cond_1c

    invoke-static {v0}, Lcom/samsung/android/rlc/util/DeviceUtil;->Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1c
    return-object v4
.end method

.method public static getSalesCodeRegion()Ljava/lang/String;
    .registers 4

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSalesCodeRegion :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTelephonyManagerWithException(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 10

    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/samsung/android/rlc/util/DeviceUtil;->isGetFirstExcpetedModel()Z

    move-result v6

    if-eqz v6, :cond_21

    :try_start_f
    const-class v6, Landroid/telephony/TelephonyManager;

    const-string/jumbo v7, "getFirst"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_20} :catch_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_20} :catch_37
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_20} :catch_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_20} :catch_2d

    move-object v4, v5

    :cond_21
    :goto_21
    if-nez v4, :cond_2c

    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    :cond_2c
    return-object v4

    :catch_2d
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_21

    :catch_32
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_21

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_21

    :catch_3c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_21
.end method

.method public static isGetFirstExcpetedModel()Z
    .registers 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ge v3, v5, :cond_3b

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v3, "GT-N7102"

    aput-object v3, v0, v4

    const-string/jumbo v3, "GT-I9502"

    aput-object v3, v0, v7

    const-string/jumbo v3, "SM-N9002"

    const/4 v5, 0x2

    aput-object v3, v0, v5

    const-string/jumbo v3, "SM-G9052"

    const/4 v5, 0x3

    aput-object v3, v0, v5

    array-length v5, v0

    move v3, v4

    :goto_25
    if-ge v3, v5, :cond_3b

    aget-object v1, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    sget-object v3, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Get First Model is true"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_3b
    return v4
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/samsung/android/rlc/util/DeviceUtil;->isNetworkAvailable(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Wifi is available"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return v0

    :cond_12
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/samsung/android/rlc/util/DeviceUtil;->isNetworkAvailable(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "3G is available"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_23
    sget-object v1, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Network access is not available"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method private static isNetworkAvailable(Landroid/content/Context;I)Z
    .registers 10

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_16

    :try_start_d
    sget-object v4, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Network access is not available."

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_16
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_25} :catch_29

    move-result v3

    :cond_26
    :goto_26
    return v3

    :cond_27
    const/4 v3, 0x0

    goto :goto_26

    :catch_29
    move-exception v1

    sget-object v4, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Network access is not available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7
.end method

.method public static isNetworkAvailableVer(Landroid/content/Context;)Z
    .registers 9

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_16

    :try_start_d
    sget-object v4, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Network access is not available."

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_16
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_25} :catch_29

    move-result v3

    :cond_26
    :goto_26
    return v3

    :cond_27
    const/4 v3, 0x0

    goto :goto_26

    :catch_29
    move-exception v1

    sget-object v4, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Network access is not available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7
.end method

.method public static libToHexString([B)Ljava/lang/String;
    .registers 11

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v8, 0x4

    new-array v1, v8, [C

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x5

    move v3, v2

    :goto_a
    const/4 v8, 0x7

    if-ge v4, v8, :cond_28

    aget-byte v0, p0, v4

    add-int/lit8 v2, v3, 0x1

    sget-object v8, Lcom/samsung/android/rlc/util/DeviceUtil;->HEX_DIGITS:[C

    ushr-int/lit8 v9, v0, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    aput-char v8, v1, v3

    add-int/lit8 v3, v2, 0x1

    sget-object v8, Lcom/samsung/android/rlc/util/DeviceUtil;->HEX_DIGITS:[C

    and-int/lit8 v9, v0, 0xf

    aget-char v8, v8, v9

    aput-char v8, v1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_28
    const/4 v4, 0x0

    :goto_29
    array-length v8, v1

    if-ge v4, v8, :cond_32

    aget-char v8, v1, v4

    const/16 v9, 0x30

    if-le v8, v9, :cond_3e

    :cond_32
    array-length v8, v1

    if-ne v4, v8, :cond_41

    new-instance v7, Ljava/lang/String;

    const-string/jumbo v8, "0"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3d
    return-object v7

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_41
    array-length v8, v1

    sub-int/2addr v8, v4

    invoke-static {v1, v4, v8}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v7

    goto :goto_3d
.end method

.method public static versionChanged(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->PKG_VER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->PKG_VER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2c

    sget-object v1, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Package version changed"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_2c
    return v0
.end method
