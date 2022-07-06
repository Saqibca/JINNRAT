.class public Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
.super Ljava/lang/Object;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;,
        Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;,
        Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 52
    new-instance v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    invoke-direct {v0, p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    const/16 v1, 0x17

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_0

    .line 127
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 132
    :goto_0
    return-object v0

    .line 128
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static unwrapCryptoObject(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .locals 2
    .param p0, "cryptoObject"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 153
    if-nez p0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-object v0

    .line 155
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 156
    new-instance v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 158
    new-instance v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljava/security/Signature;)V

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    new-instance v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    goto :goto_0
.end method

.method private static wrapCallback(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .locals 1
    .param p0, "callback"    # Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 169
    new-instance v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;

    invoke-direct {v0, p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;-><init>(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)V

    return-object v0
.end method

.method private static wrapCryptoObject(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 2
    .param p0, "cryptoObject"    # Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 138
    if-nez p0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :cond_1
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 141
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 143
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljava/security/Signature;)V

    goto :goto_0

    .line 144
    :cond_3
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    goto :goto_0
.end method


# virtual methods
.method public authenticate(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 6
    .param p1, "crypto"    # Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "flags"    # I
    .param p3, "cancel"    # Landroidx/core/os/CancellationSignal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "callback"    # Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "handler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.USE_FINGERPRINT"
    .end annotation

    .prologue
    .line 107
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_0

    .line 108
    iget-object v1, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    .line 109
    .local v0, "fp":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_0

    .line 110
    if-eqz p3, :cond_1

    .line 111
    invoke-virtual {p3}, Landroidx/core/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CancellationSignal;

    move-object v2, v1

    .line 114
    .local v2, "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_0
    invoke-static {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->wrapCryptoObject(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v1

    .line 117
    invoke-static {p4}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->wrapCallback(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v4

    move v3, p2

    move-object v5, p5

    .line 113
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 121
    .end local v0    # "fp":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v2    # "cancellationSignal":Landroid/os/CancellationSignal;
    :cond_0
    return-void

    .line 112
    .restart local v0    # "fp":Landroid/hardware/fingerprint/FingerprintManager;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasEnrolledFingerprints()Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.USE_FINGERPRINT"
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 66
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 67
    iget-object v2, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    .line 68
    .local v0, "fp":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 70
    .end local v0    # "fp":Landroid/hardware/fingerprint/FingerprintManager;
    :cond_0
    return v1
.end method

.method public isHardwareDetected()Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.USE_FINGERPRINT"
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 81
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 82
    iget-object v2, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    .line 83
    .local v0, "fp":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 85
    .end local v0    # "fp":Landroid/hardware/fingerprint/FingerprintManager;
    :cond_0
    return v1
.end method