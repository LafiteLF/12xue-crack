.class Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$1;
.super Ljava/lang/Object;
.source "UzImgsActivity.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resultImgCall(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 65
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
