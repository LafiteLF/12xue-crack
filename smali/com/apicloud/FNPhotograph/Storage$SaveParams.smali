.class public Lcom/apicloud/FNPhotograph/Storage$SaveParams;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/FNPhotograph/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveParams"
.end annotation


# instance fields
.field public filePath:Ljava/lang/String;

.field public isAlbum:Z

.field public quality:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 292
    iput v0, p0, Lcom/apicloud/FNPhotograph/Storage$SaveParams;->quality:I

    .line 295
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/Storage$SaveParams;->filePath:Ljava/lang/String;

    return-void
.end method
