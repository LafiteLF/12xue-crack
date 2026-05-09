.class Lcom/apicloud/FNPhotograph/MediaSaver$SaveRequest;
.super Ljava/lang/Object;
.source "MediaSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/FNPhotograph/MediaSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveRequest"
.end annotation


# instance fields
.field public customSavePath:Ljava/lang/String;

.field public data:[B

.field public isAbsolutePath:Z

.field public isFrontCamera:Z

.field public listener:Lcom/apicloud/FNPhotograph/MediaSaver$OnMediaSavedListener;

.field public title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
