.class public Lcom/zc/RecordDemo/Mp3Conveter;
.super Ljava/lang/Object;
.source "Mp3Conveter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zc/RecordDemo/Mp3Conveter$Quality;
    }
.end annotation


# static fields
.field public static final BITRATE:I = 0x10

.field public static final MODE:I = 0x1

.field public static final NUM_CHANNELS:I = 0x2

.field public static final QUALITY:I = 0x0

.field public static final SAMPLE_RATE:I = 0x3e80


# instance fields
.field private quality:Lcom/zc/RecordDemo/Mp3Conveter$Quality;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mp3lame"

    .line 53
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 61
    invoke-virtual/range {v0 .. v5}, Lcom/zc/RecordDemo/Mp3Conveter;->initEncoder(IIIII)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 6

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x10

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    .line 57
    invoke-virtual/range {v0 .. v5}, Lcom/zc/RecordDemo/Mp3Conveter;->initEncoder(IIIII)V

    return-void
.end method


# virtual methods
.method public native destroyEncoder()V
.end method

.method public native encodeFile(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native initEncoder(IIIII)V
.end method

.method public setQuality(Lcom/zc/RecordDemo/Mp3Conveter$Quality;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/zc/RecordDemo/Mp3Conveter;->quality:Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    return-void
.end method
