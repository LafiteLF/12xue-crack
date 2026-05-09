.class public Lcom/apicloud/a/g/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field private static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x0

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sput v1, Lcom/apicloud/a/g/b;->a:I

    const/16 v1, 0xff

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    sput v2, Lcom/apicloud/a/g/b;->b:I

    sget v3, Lcom/apicloud/a/g/b;->a:I

    sput v3, Lcom/apicloud/a/g/b;->c:I

    sput v2, Lcom/apicloud/a/g/b;->d:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v3, 0xf8

    const/16 v4, 0xf0

    invoke-static {v4, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "aliceblue"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v5, 0xfa

    const/16 v6, 0xeb

    const/16 v7, 0xd7

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "antiquewhite"

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v0, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "aqua"

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v6, 0x7f

    const/16 v7, 0xd4

    invoke-static {v6, v1, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "aquamarine"

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v4, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "azure"

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v7, 0xdc

    const/16 v8, 0xf5

    invoke-static {v8, v8, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "beige"

    invoke-virtual {v2, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v9, 0xe4

    const/16 v10, 0xc4

    invoke-static {v1, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "bisque"

    invoke-virtual {v2, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    sget v9, Lcom/apicloud/a/g/b;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "black"

    invoke-virtual {v2, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v9, 0xcd

    const/16 v10, 0xeb

    invoke-static {v1, v10, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "blanchedalmond"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v0, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "blue"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0x8a

    const/16 v11, 0x2b

    const/16 v12, 0xe2

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "blueviolet"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0xa5

    const/16 v11, 0x2a

    const/16 v12, 0x2a

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "brown"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0xde

    const/16 v11, 0xb8

    const/16 v12, 0x87

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "burlywood"

    invoke-virtual {v2, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v11, 0xa0

    const/16 v12, 0x5f

    const/16 v13, 0x9e

    invoke-static {v12, v13, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "cadetblue"

    invoke-virtual {v2, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v6, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "chartreuse"

    invoke-virtual {v2, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v12, 0x69

    const/16 v13, 0xd2

    const/16 v14, 0x1e

    invoke-static {v13, v12, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "chocolate"

    invoke-virtual {v2, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v13, 0x50

    invoke-static {v1, v6, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "coral"

    invoke-virtual {v2, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v13, 0x64

    const/16 v14, 0x95

    const/16 v15, 0xed

    invoke-static {v13, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "cornflowerblue"

    invoke-virtual {v2, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v1, v3, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "cornsilk"

    invoke-virtual {v2, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v13, 0x14

    const/16 v14, 0x3c

    invoke-static {v7, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "crimson"

    invoke-virtual {v2, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v0, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "cyan"

    invoke-virtual {v2, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v13, 0x8b

    invoke-static {v0, v0, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "darkblue"

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v0, v13, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "darkcyan"

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v14, 0xb8

    const/16 v15, 0x86

    const/16 v6, 0xb

    invoke-static {v14, v15, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v14, "darkgoldenrod"

    invoke-virtual {v2, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v6, 0xa9

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "darkgray"

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v14, 0x64

    invoke-static {v0, v14, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "darkgreen"

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v14, "darkgrey"

    invoke-virtual {v2, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v6, 0xbd

    const/16 v14, 0xb7

    const/16 v15, 0x6b

    invoke-static {v6, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v14, "darkkhaki"

    invoke-virtual {v2, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v13, v0, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v14, "darkmagenta"

    invoke-virtual {v2, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v6, 0x2f

    const/16 v14, 0x55

    invoke-static {v14, v15, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "darkolivegreen"

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v14, 0x8c

    invoke-static {v1, v14, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "darkorange"

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v14, 0x32

    const/16 v15, 0x99

    const/16 v10, 0xcc

    invoke-static {v15, v14, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v15, "darkorchid"

    invoke-virtual {v2, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v13, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v15, "darkred"

    invoke-virtual {v2, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0xe9

    const/16 v15, 0x96

    const/16 v14, 0x7a

    invoke-static {v10, v15, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "darksalmon"

    invoke-virtual {v2, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0x8f

    const/16 v14, 0xbc

    const/16 v15, 0x8f

    invoke-static {v10, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "darkseagreen"

    invoke-virtual {v2, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0x48

    const/16 v14, 0x3d

    invoke-static {v10, v14, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "darkslateblue"

    invoke-virtual {v2, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0x4f

    const/16 v14, 0x4f

    invoke-static {v6, v10, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "darkslategray"

    invoke-virtual {v2, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0x4f

    const/16 v14, 0x4f

    invoke-static {v6, v10, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "darkslategrey"

    invoke-virtual {v2, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0xce

    const/16 v14, 0xd1

    invoke-static {v0, v10, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "darkturquoise"

    invoke-virtual {v2, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0xd3

    const/16 v14, 0x94

    invoke-static {v14, v0, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "darkviolet"

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v14, 0x14

    const/16 v15, 0x93

    invoke-static {v1, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "deeppink"

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v14, 0xbf

    invoke-static {v0, v14, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "deepskyblue"

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v12, v12, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "dimgray"

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v12, v12, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "dimgrey"

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v14, 0x90

    const/16 v15, 0x1e

    invoke-static {v15, v14, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v11, "dodgerblue"

    invoke-virtual {v2, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v11, 0xb2

    const/16 v15, 0x22

    const/16 v14, 0x22

    invoke-static {v11, v15, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "firebrick"

    invoke-virtual {v2, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v1, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "floralwhite"

    invoke-virtual {v2, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v11, 0x22

    const/16 v14, 0x22

    invoke-static {v11, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "forestgreen"

    invoke-virtual {v2, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "fuchsia"

    invoke-virtual {v2, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "gainsboro"

    invoke-virtual {v2, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v3, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v7, "ghostwhite"

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v3, 0xd7

    invoke-static {v1, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v7, "gold"

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v3, 0xda

    const/16 v7, 0xa5

    const/16 v11, 0x20

    invoke-static {v3, v7, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v7, "goldenrod"

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v3, 0x80

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "gray"

    invoke-virtual {v2, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v0, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "green"

    invoke-virtual {v2, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v7, 0xad

    invoke-static {v7, v1, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "greenyellow"

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "grey"

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v4, v1, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "honeydew"

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v6, 0xb4

    invoke-static {v1, v12, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "hotpink"

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v6, 0x5c

    const/16 v7, 0x5c

    invoke-static {v9, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "indianred"

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v6, 0x4b

    const/16 v7, 0x82

    invoke-static {v6, v0, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "indigo"

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v1, v1, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ivory"

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v6, 0xe6

    const/16 v7, 0x8c

    invoke-static {v4, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "khaki"

    invoke-virtual {v2, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v6, v6, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "lavender"

    invoke-virtual {v2, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v1, v4, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "lavenderblush"

    invoke-virtual {v2, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v7, 0x7c

    const/16 v11, 0xfc

    invoke-static {v7, v11, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "lawngreen"

    invoke-virtual {v2, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v1, v5, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "lemonchiffon"

    invoke-virtual {v2, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v7, 0xad

    const/16 v11, 0xd8

    invoke-static {v7, v11, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "lightblue"

    invoke-virtual {v2, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v4, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "lightcoral"

    invoke-virtual {v2, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v7, 0xe0

    invoke-static {v7, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "lightcyan"

    invoke-virtual {v2, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v7, 0xd2

    invoke-static {v5, v5, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "lightgoldenrodyellow"

    invoke-virtual {v2, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v10, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "lightgray"

    invoke-virtual {v2, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v7, 0xee

    const/16 v11, 0x90

    invoke-static {v11, v7, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "lightgreen"

    invoke-virtual {v2, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v10, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "lightgrey"

    invoke-virtual {v2, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v11, 0xb6

    const/16 v14, 0xc1

    invoke-static {v1, v11, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "lightpink"

    invoke-virtual {v2, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v11, 0x7a

    const/16 v14, 0xa0

    invoke-static {v1, v14, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "lightsalmon"

    invoke-virtual {v2, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v11, 0x20

    const/16 v14, 0xb2

    const/16 v15, 0xaa

    invoke-static {v11, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "lightseagreen"

    invoke-virtual {v2, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v11, 0x87

    const/16 v14, 0xce

    invoke-static {v11, v14, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "lightskyblue"

    invoke-virtual {v2, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v11, 0x77

    const/16 v14, 0x88

    const/16 v15, 0x99

    invoke-static {v11, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "lightslategray"

    invoke-virtual {v2, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v11, 0x77

    const/16 v14, 0x88

    invoke-static {v11, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "lightslategrey"

    invoke-virtual {v2, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v11, 0xb0

    const/16 v14, 0xc4

    const/16 v15, 0xde

    invoke-static {v11, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "lightsteelblue"

    invoke-virtual {v2, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v11, 0xe0

    invoke-static {v1, v1, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "lightyellow"

    invoke-virtual {v2, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v0, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "lime"

    invoke-virtual {v2, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v11, 0x32

    invoke-static {v11, v9, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "limegreen"

    invoke-virtual {v2, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v5, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v11, "linen"

    invoke-virtual {v2, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v11, "magenta"

    invoke-virtual {v2, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v3, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v11, "maroon"

    invoke-virtual {v2, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v4, 0x66

    const/16 v11, 0xaa

    invoke-static {v4, v9, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v11, "mediumaquamarine"

    invoke-virtual {v2, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v0, v0, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v11, "mediumblue"

    invoke-virtual {v2, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v4, 0xba

    const/16 v11, 0x55

    invoke-static {v4, v11, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v10, "mediumorchid"

    invoke-virtual {v2, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v4, 0x70

    const/16 v10, 0x93

    const/16 v11, 0xdb

    invoke-static {v10, v4, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "mediumpurple"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0x3c

    const/16 v11, 0xb3

    const/16 v14, 0x71

    invoke-static {v10, v11, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "mediumseagreen"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0x7b

    const/16 v11, 0x68

    invoke-static {v10, v11, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "mediumslateblue"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0x9a

    invoke-static {v0, v5, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "mediumspringgreen"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0x48

    const/16 v11, 0xd1

    const/16 v14, 0xcc

    invoke-static {v10, v11, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "mediumturquoise"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0xc7

    const/16 v11, 0x15

    const/16 v14, 0x85

    invoke-static {v10, v11, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "mediumvioletred"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0x19

    const/16 v11, 0x19

    invoke-static {v10, v11, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "midnightblue"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v8, v1, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "mintcream"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0xe4

    const/16 v11, 0xe1

    invoke-static {v1, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "mistyrose"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0xe4

    const/16 v11, 0xb5

    invoke-static {v1, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "moccasin"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0xad

    const/16 v11, 0xde

    invoke-static {v1, v11, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "navajowhite"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v0, v0, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "navy"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0xfd

    invoke-static {v10, v8, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "oldlace"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v3, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "olive"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0x6b

    const/16 v11, 0x8e

    const/16 v14, 0x23

    invoke-static {v10, v11, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "olivedrab"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0xa5

    invoke-static {v1, v10, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "orange"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0x45

    invoke-static {v1, v10, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "orangered"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0xda

    const/16 v11, 0xd6

    invoke-static {v10, v4, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "orchid"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0xe8

    const/16 v11, 0xaa

    invoke-static {v7, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "palegoldenrod"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0x98

    const/16 v11, 0xfb

    const/16 v14, 0x98

    invoke-static {v10, v11, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "palegreen"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0xaf

    invoke-static {v10, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "paleturquoise"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0xdb

    const/16 v11, 0x93

    invoke-static {v10, v4, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "palevioletred"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0xef

    const/16 v11, 0xd5

    invoke-static {v1, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "papayawhip"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0xda

    const/16 v11, 0xb9

    invoke-static {v1, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "peachpuff"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0x85

    const/16 v11, 0x3f

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "peru"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0xc0

    const/16 v11, 0xcb

    invoke-static {v1, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "pink"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0xdd

    const/16 v11, 0xdd

    const/16 v14, 0xa0

    invoke-static {v10, v14, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "plum"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v10, 0xb0

    const/16 v11, 0xe0

    invoke-static {v10, v11, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v10, "powderblue"

    invoke-virtual {v2, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v3, v0, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v10, "purple"

    invoke-virtual {v2, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v1, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v10, "red"

    invoke-virtual {v2, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v6, 0xbc

    const/16 v10, 0x8f

    const/16 v11, 0x8f

    invoke-static {v6, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v10, "rosybrown"

    invoke-virtual {v2, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v6, 0x41

    const/16 v10, 0xe1

    invoke-static {v6, v12, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v10, "royalblue"

    invoke-virtual {v2, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v6, 0x45

    const/16 v10, 0x13

    invoke-static {v13, v6, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v10, "saddlebrown"

    invoke-virtual {v2, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v6, 0x72

    invoke-static {v5, v3, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v10, "salmon"

    invoke-virtual {v2, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v6, 0xf4

    const/16 v10, 0xa4

    const/16 v11, 0x60

    invoke-static {v6, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v10, "sandybrown"

    invoke-virtual {v2, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v6, 0x2e

    const/16 v10, 0x57

    invoke-static {v6, v13, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v10, "seagreen"

    invoke-virtual {v2, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v1, v8, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v10, "seashell"

    invoke-virtual {v2, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v6, 0x52

    const/16 v10, 0x2d

    const/16 v11, 0xa0

    invoke-static {v11, v6, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v10, "sienna"

    invoke-virtual {v2, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v6, 0xc0

    const/16 v10, 0xc0

    const/16 v11, 0xc0

    invoke-static {v6, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v10, "silver"

    invoke-virtual {v2, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v6, 0x87

    const/16 v10, 0xce

    const/16 v11, 0xeb

    invoke-static {v6, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v10, "skyblue"

    invoke-virtual {v2, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v6, 0x6a

    const/16 v10, 0x5a

    invoke-static {v6, v10, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v10, "slateblue"

    invoke-virtual {v2, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v6, 0x90

    invoke-static {v4, v3, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "slategray"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v4, v3, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "slategrey"

    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v1, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "snow"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v4, 0x7f

    invoke-static {v0, v1, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "springgreen"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v4, 0x46

    const/16 v5, 0x82

    const/16 v6, 0xb4

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "steelblue"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v4, 0xd2

    const/16 v5, 0xb4

    const/16 v6, 0x8c

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "tan"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v0, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "teal"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v3, 0xd8

    const/16 v4, 0xbf

    const/16 v5, 0xd8

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "thistle"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v3, 0x63

    const/16 v4, 0x47

    invoke-static {v1, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "tomato"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v3, 0x40

    const/16 v4, 0xe0

    const/16 v5, 0xd0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "turquoise"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v3, 0x82

    invoke-static {v7, v3, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "violet"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v3, 0xb3

    const/16 v4, 0xde

    invoke-static {v8, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "wheat"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    sget v3, Lcom/apicloud/a/g/b;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "white"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "whitesmoke"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v1, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "yellow"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    const/16 v2, 0x9a

    const/16 v3, 0x32

    invoke-static {v2, v9, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "yellowgreen"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "transparent"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(I)I
    .locals 0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    return p0
.end method

.method public static a(IIII)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static final a(Ljava/lang/CharSequence;I)I
    .locals 8

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xa

    const/16 v1, 0x2d

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, -0x1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v2

    move v1, v4

    :goto_0
    const/16 v5, 0x30

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    if-ne v5, v6, :cond_5

    sub-int/2addr p1, v4

    if-ne v3, p1, :cond_2

    return v2

    :cond_2
    add-int/lit8 p1, v3, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x78

    if-eq v2, v0, :cond_4

    const/16 v2, 0x58

    if-ne v2, v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    move v3, p1

    goto :goto_3

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_5
    const/16 p1, 0x23

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_6

    add-int/lit8 v3, v3, 0x1

    :goto_2
    move v0, v7

    :cond_6
    :goto_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    mul-int/2addr p0, v1

    return p0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/apicloud/a/g/b;->d(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lcom/apicloud/a/g/n; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/apicloud/a/g/n;->printStackTrace()V

    return p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static b(I)I
    .locals 0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/apicloud/a/g/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static c(I)I
    .locals 0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/apicloud/a/g/a/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/apicloud/a/g/b;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static d(I)I
    .locals 0

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apicloud/a/g/n;
        }
    .end annotation

    invoke-static {p0}, Lcom/apicloud/a/g/a/b;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/apicloud/a/g/a/b;->a(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Lcom/apicloud/a/g/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/apicloud/a/g/n;->printStackTrace()V

    return-object v0
.end method

.method public static f(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/apicloud/a/g/b;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/apicloud/a/g/b;->a(Ljava/lang/CharSequence;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static g(Ljava/lang/String;)Lcom/apicloud/a/g/a/g;
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/apicloud/a/g/a/b;->d(Ljava/lang/String;)Lcom/apicloud/a/g/a/g;

    move-result-object p0
    :try_end_0
    .catch Lcom/apicloud/a/g/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/apicloud/a/g/n;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
