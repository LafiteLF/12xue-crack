.class public Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;
.super Ljava/lang/Object;
.source "Capture.java"


# static fields
.field private static mInstance:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;


# instance fields
.field private view:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;
    .locals 1

    .line 13
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->mInstance:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->mInstance:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    .line 16
    :cond_0
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->mInstance:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    return-object v0
.end method


# virtual methods
.method public getCaptureView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->view:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    return-object v0
.end method

.method public setCaptureView(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->view:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    return-void
.end method
