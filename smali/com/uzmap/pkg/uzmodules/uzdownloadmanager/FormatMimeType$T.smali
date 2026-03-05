.class Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType$T;
.super Ljava/lang/Object;
.source "FormatMimeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "T"
.end annotation


# instance fields
.field public extension:Ljava/lang/String;

.field public formatName:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType$T;->mimeType:Ljava/lang/String;

    .line 196
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType$T;->extension:Ljava/lang/String;

    .line 197
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType$T;->formatName:Ljava/lang/String;

    return-void
.end method
