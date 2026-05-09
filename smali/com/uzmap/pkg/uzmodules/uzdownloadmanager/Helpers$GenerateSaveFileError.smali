.class public Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$GenerateSaveFileError;
.super Ljava/io/IOException;
.source "Helpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenerateSaveFileError"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4023609287cd3b68L


# instance fields
.field mMessage:Ljava/lang/String;

.field mStatus:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 220
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$GenerateSaveFileError;->mStatus:I

    .line 221
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$GenerateSaveFileError;->mMessage:Ljava/lang/String;

    return-void
.end method
