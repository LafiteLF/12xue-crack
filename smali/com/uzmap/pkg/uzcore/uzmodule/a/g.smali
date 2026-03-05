.class public Lcom/uzmap/pkg/uzcore/uzmodule/a/g;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "toLauncher"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/4 v2, 0x2

    const-string v3, "installApp"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/4 v3, 0x3

    const-string v4, "openApp"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/4 v4, 0x4

    const-string v5, "openWidget"

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/4 v5, 0x5

    const-string v6, "closeWidget"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/4 v5, 0x6

    const-string v6, "getFsWidgets"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/4 v6, 0x7

    const-string v7, "openWin"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v7, 0x8

    const-string v8, "openSlidLayout"

    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v8, 0x9

    const-string v9, "openSlidPane"

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v9, 0xa

    const-string v10, "closeSlidPane"

    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v10, 0xb

    const-string v11, "setWinAttr"

    invoke-virtual {v0, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v11, 0xc

    const-string v12, "closeWin"

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0xd

    const-string v13, "closeToWin"

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const-string v13, "openToWin"

    const/16 v14, 0x7e

    invoke-virtual {v0, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v15, 0xe

    const-string v12, "execScript"

    invoke-virtual {v0, v15, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0xf

    const-string v15, "openFrame"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v15, 0x10

    const-string v12, "setFrameAttr"

    invoke-virtual {v0, v15, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x11

    const-string v15, "bringFrameToFront"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v15, 0x12

    const-string v12, "sendFrameToBack"

    invoke-virtual {v0, v15, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x13

    const-string v15, "closeFrame"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v15, 0x14

    const-string v12, "animation"

    invoke-virtual {v0, v15, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x15

    const-string v15, "openFrameGroup"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v15, 0x16

    const-string v12, "setFrameGroupAttr"

    invoke-virtual {v0, v15, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x17

    const-string v15, "setFrameGroupIndex"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x18

    const-string v15, "closeFrameGroup"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x19

    const-string v15, "setRefreshHeaderInfo"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x1a

    const-string v15, "refreshHeaderLoadDone"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x1b

    const-string v15, "addEventListener"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x1c

    const-string v15, "removeEventListener"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x1d

    const-string v15, "refreshHeaderLoading"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x1e

    const-string v15, "log"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x1f

    const-string v15, "alert"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x20

    const-string v15, "confirm"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x21

    const-string v15, "prompt"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x22

    const-string v15, "showProgress"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x23

    const-string v15, "hideProgress"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x24

    const-string v15, "setPrefs"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x25

    const-string v15, "getPrefs"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x26

    const-string v15, "removePrefs"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x27

    const-string v15, "loadSecureValue"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x28

    const-string v15, "getPicture"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x29

    const-string v15, "ajax"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x2a

    const-string v15, "cancelAjax"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x2b

    const-string v15, "call"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x2c

    const-string v15, "sms"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x2d

    const-string v15, "mail"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x2e

    const-string v15, "readFile"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x2f

    const-string v15, "writeFile"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x30

    const-string v15, "startRecord"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x31

    const-string v15, "stopRecord"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x32

    const-string v15, "startPlay"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x33

    const-string v15, "stopPlay"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x34

    const-string v15, "startLocation"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x35

    const-string v15, "stopLocation"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x36

    const-string v15, "getLocation"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x37

    const-string v15, "startSensor"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x38

    const-string v15, "stopSensor"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x39

    const-string v15, "setStatusBarStyle"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x3a

    const-string v15, "setFullScreen"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x3b

    const-string v15, "openContacts"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x3c

    const-string v15, "openVideo"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x3d

    const-string v15, "removeLaunchView"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x3e

    const-string v15, "openPicker"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x3f

    const-string v15, "download"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x40

    const-string v15, "cancelDownload"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x41

    const-string v15, "actionSheet"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x42

    const-string v15, "clearCache"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x43

    const-string v15, "toast"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x44

    const-string v15, "showFloatBox"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x85

    const-string v15, "startWiFiService"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x86

    const-string v15, "stopWiFiService"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x87

    const-string v15, "showWiFiFloatBox"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x88

    const-string v15, "showWiFiInput"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x45

    const-string v15, "notification"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x46

    const-string v15, "cancelNotification"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x47

    const-string v15, "setScreenOrientation"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x48

    const-string v15, "lockSlidPane"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x49

    const-string v15, "unlockSlidPane"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x4a

    const-string v15, "setKeepScreenOn"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x4b

    const-string v15, "historyBack"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x4c

    const-string v15, "historyForward"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x4d

    const-string v15, "sendEvent"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x4e

    const-string v15, "appInstalled"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x4f

    const-string v15, "requestFocus"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x50

    const-string v15, "onTvPeak"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x51

    const-string v15, "setTvFocusElement"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x52

    const-string v15, "pageDown"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x53

    const-string v15, "pageUp"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x54

    const-string v15, "imageCache"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x55

    const-string v15, "pageScrollBy"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x56

    const-string v15, "pageScrollTo"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x57

    const-string v15, "saveMediaToAlbum"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x58

    const-string v15, "setScreenSecure"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x59

    const-string v15, "setAppIconBadge"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x5a

    const-string v15, "getCacheSize"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x5b

    const-string v15, "getFreeDiskSpace"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x5c

    const-string v15, "accessNative"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x5d

    const-string v15, "unInstallApp"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x5e

    const-string v15, "openDrawerLayout"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x5f

    const-string v15, "openDrawerPane"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x60

    const-string v15, "closeDrawerPane"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x61

    const-string v15, "setCustomRefreshHeaderInfo"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x62

    const-string v15, "setFrameClient"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x63

    const-string v15, "rebootApp"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x64

    const-string v15, "getPhoneNumber"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x65

    const-string v15, "getTotalSpace"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x66

    const-string v15, "loadData"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x67

    const-string v15, "showLaunchView"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x68

    const-string v15, "setBlurEffect"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x69

    const-string v15, "hasPermission"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x6a

    const-string v15, "requestPermission"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x6b

    const-string v15, "applyCertificates"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x6c

    const-string v15, "setGlobalData"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x6d

    const-string v15, "getGlobalData"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x6e

    const-string v15, "windows"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x6f

    const-string v15, "frames"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x70

    const-string v15, "openTabLayout"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x71

    const-string v15, "setTabLayoutAttr"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x72

    const-string v15, "setTabBarAttr"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x73

    const-string v15, "setTabBarItemAttr"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x74

    const-string v15, "setMenuItems"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x75

    const-string v15, "setNavBarAttr"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x76

    const-string v15, "setInterfaceStyle"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x77

    const-string v15, "getInterfaceStyle"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x78

    const-string v15, "setFocus"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x79

    const-string v15, "screenCapture"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x7a

    const-string v15, "invokeApi"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x7b

    const-string v15, "invokeApiSync"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x7c

    const-string v15, "pausePlay"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x7d

    const-string v15, "getNavBarAttr"

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x7f

    const-string v13, "setCookie"

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x91

    const-string v13, "clearCookie"

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x8a

    const-string v13, "getPrivacyData"

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x8c

    const-string v13, "setIndexSrc"

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    const/16 v12, 0x8b

    const-string v13, "writeLog"

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const/4 v12, 0x0

    const-string v13, "version"

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const-string v12, "systemType"

    invoke-virtual {v0, v1, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const-string v1, "systemVersion"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const-string v1, "deviceId"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const-string v1, "deviceModel"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const-string v1, "connectionType"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const-string v1, "wgtParam"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const-string v1, "pageParam"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const-string v1, "appParam"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const-string v1, "wgtRootDir"

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const-string v1, "winName"

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const-string v1, "frameName"

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const-string v1, "winWidth"

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const-string v1, "winHeight"

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const-string v1, "frameWidth"

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const-string v1, "frameHeight"

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const-string v1, "appId"

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const-string v1, "appName"

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const-string v1, "wgtLoaderDir"

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const-string v1, "appVersion"

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const-string v1, "screenWidth"

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const/16 v1, 0x16

    const-string v2, "screenHeight"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const/16 v1, 0x17

    const-string v2, "fsDir"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const/16 v1, 0x18

    const-string v2, "cacheDir"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const/16 v1, 0x19

    const-string v2, "operator"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const/16 v1, 0x1a

    const-string v2, "deviceToken"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const/16 v1, 0x1b

    const-string v2, "fingerprint"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const/16 v1, 0x1c

    const-string v2, "statusBarAppearance"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const/16 v1, 0x1d

    const-string v2, "debug"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const/16 v1, 0x1e

    const-string v2, "boxDir"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const/16 v1, 0x1f

    const-string v2, "channel"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const/16 v1, 0x20

    const-string v2, "jailbreak"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const/16 v1, 0x21

    const-string v2, "uiMode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const/16 v1, 0x22

    const-string v2, "safeArea"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const/16 v1, 0x23

    const-string v2, "isRecoveryMode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const/16 v1, 0x24

    const-string v2, "platform"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    const/16 v1, 0x25

    const-string v2, "language"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "unknown"

    :goto_0
    return-object p0
.end method

.method public static b(I)Z
    .locals 1

    const/16 v0, 0x8b

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "unknown"

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    :cond_0
    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    return-object p0
.end method
