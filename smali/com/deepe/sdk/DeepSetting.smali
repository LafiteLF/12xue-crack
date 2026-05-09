.class public final Lcom/deepe/sdk/DeepSetting;
.super Ljava/lang/Object;


# static fields
.field public static DEBUG_ENABLE:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugEnable()Z
    .locals 1

    sget-boolean v0, Lcom/deepe/sdk/DeepSetting;->DEBUG_ENABLE:Z

    return v0
.end method

.method public static setDebug(Z)V
    .locals 0

    sput-boolean p0, Lcom/deepe/sdk/DeepSetting;->DEBUG_ENABLE:Z

    invoke-static {p0}, Lcom/deepe/d/a;->a(Z)V

    return-void
.end method
