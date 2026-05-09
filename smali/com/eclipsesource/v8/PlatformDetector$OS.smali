.class public Lcom/eclipsesource/v8/PlatformDetector$OS;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eclipsesource/v8/PlatformDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OS"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLibFileExtension()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/eclipsesource/v8/PlatformDetector$OS;->isWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "dll"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/eclipsesource/v8/PlatformDetector$OS;->isMac()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "dylib"

    return-object v0

    :cond_1
    invoke-static {}, Lcom/eclipsesource/v8/PlatformDetector$OS;->isLinux()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/eclipsesource/v8/PlatformDetector$OS;->isAndroid()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/eclipsesource/v8/PlatformDetector$OS;->isNativeClient()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported platform library-extension for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/eclipsesource/v8/PlatformDetector$OS;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    const-string v0, "so"

    return-object v0
.end method

.method public static getName()Ljava/lang/String;
    .locals 5

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eclipsesource/v8/PlatformDetector;->access$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.specification.vendor"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eclipsesource/v8/PlatformDetector;->access$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "unknown"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported platform/vendor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-object v4
.end method

.method public static isAndroid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isLinux()Z
    .locals 2

    invoke-static {}, Lcom/eclipsesource/v8/PlatformDetector$OS;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMac()Z
    .locals 2

    invoke-static {}, Lcom/eclipsesource/v8/PlatformDetector$OS;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "macosx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNativeClient()Z
    .locals 2

    invoke-static {}, Lcom/eclipsesource/v8/PlatformDetector$OS;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nacl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWindows()Z
    .locals 2

    invoke-static {}, Lcom/eclipsesource/v8/PlatformDetector$OS;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
