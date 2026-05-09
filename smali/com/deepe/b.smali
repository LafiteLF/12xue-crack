.class public final Lcom/deepe/b;
.super Ljava/lang/Object;


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static D:Ljava/lang/String;

.field public static E:Ljava/lang/String;

.field public static F:Ljava/lang/String;

.field public static G:Ljava/lang/String;

.field public static H:Ljava/lang/String;

.field public static I:Ljava/lang/String;

.field public static J:Ljava/lang/String;

.field public static K:Ljava/lang/String;

.field public static L:Ljava/lang/String;

.field public static M:Ljava/lang/String;

.field public static N:Ljava/lang/String;

.field public static O:Ljava/lang/String;

.field public static P:Ljava/lang/String;

.field public static Q:Ljava/lang/String;

.field public static R:Ljava/lang/String;

.field public static S:Ljava/lang/String;

.field public static T:Ljava/lang/String;

.field public static U:Ljava/lang/String;

.field public static V:Ljava/lang/String;

.field public static W:Ljava/lang/String;

.field public static X:Ljava/lang/String;

.field public static Y:Ljava/lang/String;

.field public static Z:Ljava/lang/String;

.field public static a:Ljava/lang/String;

.field public static aa:Ljava/lang/String;

.field public static ab:Ljava/lang/String;

.field public static ac:Ljava/lang/String;

.field public static ad:Ljava/lang/String;

.field public static ae:Ljava/lang/String;

.field public static af:Ljava/lang/String;

.field public static ag:Ljava/lang/String;

.field public static ah:Ljava/lang/String;

.field public static ai:Ljava/lang/String;

.field public static aj:Ljava/lang/String;

.field private static ak:Ljava/lang/String;

.field private static al:Ljava/lang/String;

.field private static am:Ljava/lang/String;

.field private static an:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:[Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/deepe/b;->f()V

    const/4 v0, 0x0

    sput-object v0, Lcom/deepe/b;->ak:Ljava/lang/String;

    sput-object v0, Lcom/deepe/b;->al:Ljava/lang/String;

    sput-object v0, Lcom/deepe/b;->am:Ljava/lang/String;

    sput-object v0, Lcom/deepe/b;->an:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "\u63d2\u4ef6\u672a\u7ed1\u5b9a\uff0c\u8bf7\u5728\u63d2\u4ef6\u5e93\u7ed1\u5b9a\u540e\u91cd\u65b0\u7f16\u8bd1\n"

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/deepe/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\u8bf7\u786e\u8ba4\u672c\u9879\u76eeconfig\u6587\u4ef6\u4e2dID\u662f\u5426\u4e0e\u670d\u52a1\u5668\u7aef\u4e00\u81f4"

    const-string v2, "\n\u7684\u9879\u76ee\n"

    const-string v3, "\u8c03\u8bd5\u8def\u5f84\u4e0b\u672a\u627e\u5230ID\u4e3a\uff1a\n"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4e0b\u62c9\u5237\u65b0\u63d2\u4ef6"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u672a\u7ed1\u5b9a\uff0c\u8bf7\u5728\u63d2\u4ef6\u5e93\u7ed1\u5b9a\u540e\u91cd\u65b0\u7f16\u8bd1\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/deepe/b;->ak:Ljava/lang/String;

    sput-object v0, Lcom/deepe/b;->an:Ljava/lang/String;

    sput-object v0, Lcom/deepe/b;->am:Ljava/lang/String;

    invoke-static {}, Lcom/deepe/b;->f()V

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/deepe/b;->am:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/deepe/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/deepe/b;->am:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/deepe/b;->am:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :goto_0
    sput-object v1, Lcom/deepe/b;->al:Ljava/lang/String;

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v2, 0xca9

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "zht"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "zh-TW"

    goto :goto_2

    :pswitch_1
    const-string v0, "zhs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "zh-CN"

    goto :goto_2

    :cond_3
    const-string v0, "en"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    :goto_1
    goto :goto_0

    :cond_4
    const-string p0, "en-US"

    :goto_2
    sput-object p0, Lcom/deepe/b;->al:Ljava/lang/String;

    :goto_3
    invoke-static {}, Lcom/deepe/c/a;->a()Lcom/deepe/c/a;

    move-result-object p0

    sget-object v0, Lcom/deepe/b;->al:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/deepe/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/b;->b()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1d705
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/deepe/b;->ak:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/deepe/b;->al:Ljava/lang/String;

    if-eqz v0, :cond_1

    sput-object v0, Lcom/deepe/b;->ak:Ljava/lang/String;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/deepe/c/a;->a()Lcom/deepe/c/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/deepe/c/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sput-object v0, Lcom/deepe/b;->ak:Ljava/lang/String;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/deepe/b;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/deepe/b;->ak:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/deepe/b;->an:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/deepe/c/b/f;->a()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    invoke-virtual {v0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "hans"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "CN"

    goto :goto_1

    :cond_2
    const-string v3, "hant"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v2, "TW"

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/deepe/b;->an:Ljava/lang/String;

    return-object v0
.end method

.method private static f()V
    .locals 7

    invoke-static {}, Lcom/deepe/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "..."

    if-eqz v0, :cond_0

    const-string v0, "\u60a8\u6709\u65b0\u7684\u66f4\u65b0\u5305"

    sput-object v0, Lcom/deepe/b;->a:Ljava/lang/String;

    const-string v0, "\u589e\u91cf\u66f4\u65b0"

    sput-object v0, Lcom/deepe/b;->b:Ljava/lang/String;

    const-string v0, "\u7acb\u5373\u66f4\u65b0"

    sput-object v0, Lcom/deepe/b;->c:Ljava/lang/String;

    const-string v0, "\u7acb\u5373\u5b89\u88c5"

    sput-object v0, Lcom/deepe/b;->d:Ljava/lang/String;

    const-string v0, "\u7acb\u5373\u91cd\u542f"

    sput-object v0, Lcom/deepe/b;->e:Ljava/lang/String;

    const-string v0, "\u53d6\u6d88"

    sput-object v0, Lcom/deepe/b;->f:Ljava/lang/String;

    const-string v0, "\u786e\u5b9a"

    sput-object v0, Lcom/deepe/b;->g:Ljava/lang/String;

    const-string v2, "\u5b8c\u6210"

    sput-object v2, Lcom/deepe/b;->h:Ljava/lang/String;

    const-string v2, "\u63d0\u793a"

    sput-object v2, Lcom/deepe/b;->i:Ljava/lang/String;

    const-string v2, "\u6709\u65b0\u7248\u672c\u5566\uff01"

    sput-object v2, Lcom/deepe/b;->m:Ljava/lang/String;

    const-string v2, "\u5f3a\u5236\u66f4\u65b0"

    sput-object v2, Lcom/deepe/b;->j:Ljava/lang/String;

    const-string v2, "\u5f3a\u5236\u5173\u95ed"

    sput-object v2, Lcom/deepe/b;->k:Ljava/lang/String;

    const-string v2, "\u66f4\u65b0\u63d0\u793a"

    sput-object v2, Lcom/deepe/b;->n:Ljava/lang/String;

    const-string v2, "\u6700\u65b0\u7248\u672c"

    sput-object v2, Lcom/deepe/b;->o:Ljava/lang/String;

    const-string v2, "\u66f4\u65b0\u63cf\u8ff0"

    sput-object v2, Lcom/deepe/b;->p:Ljava/lang/String;

    const-string v2, "\u53d1\u5e03\u65f6\u95f4"

    sput-object v2, Lcom/deepe/b;->q:Ljava/lang/String;

    const-string v2, "\u4e0b\u8f7d\u5b89\u88c5\u5305"

    sput-object v2, Lcom/deepe/b;->r:Ljava/lang/String;

    const-string v2, "\u4e0b\u8f7d\u66f4\u65b0\u5305"

    sput-object v2, Lcom/deepe/b;->s:Ljava/lang/String;

    const-string v2, "\u4e0b\u8f7d\u6210\u529f"

    sput-object v2, Lcom/deepe/b;->t:Ljava/lang/String;

    const-string v2, "\u66f4\u65b0\u5931\u8d25"

    sput-object v2, Lcom/deepe/b;->u:Ljava/lang/String;

    const-string v2, "\u5f3a\u5236\u66f4\u65b0\u7248\u672c\uff0c\u5fc5\u987b\u5b89\u88c5\u65b0\u7684\u7248\u672c\u624d\u80fd\u7ee7\u7eed\u4f7f\u7528"

    sput-object v2, Lcom/deepe/b;->l:Ljava/lang/String;

    const-string v2, "\u66f4\u65b0\u5305\u4e0b\u8f7d\u6210\u529f\uff0c\u5c06\u5728\u4e0b\u6b21\u542f\u52a8\u5e94\u7528\u65f6\u8d77\u4f5c\u7528"

    sput-object v2, Lcom/deepe/b;->v:Ljava/lang/String;

    const-string v2, "\u66f4\u65b0\u6210\u529f\uff01\u91cd\u542f\u5e94\u7528\u751f\u6548\u3002"

    sput-object v2, Lcom/deepe/b;->w:Ljava/lang/String;

    const-string v2, "\u5f00\u59cb\u66f4\u65b0"

    const-string v3, "\u4e0b\u8f7d\u66f4\u65b0"

    const-string v4, "\u5b89\u88c5\u66f4\u65b0"

    const-string v5, "\u7ed3\u675f\u66f4\u65b0"

    const-string v6, "\u66f4\u65b0\u9519\u8bef"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/deepe/b;->x:[Ljava/lang/String;

    const-string v2, "\u8fd4\u56de"

    sput-object v2, Lcom/deepe/b;->y:Ljava/lang/String;

    sput-object v0, Lcom/deepe/b;->z:Ljava/lang/String;

    const-string v0, "\u63d0\u9192"

    sput-object v0, Lcom/deepe/b;->A:Ljava/lang/String;

    const-string v0, "\u5ffd\u7565"

    sput-object v0, Lcom/deepe/b;->B:Ljava/lang/String;

    const-string v0, "\u62d2\u7edd"

    sput-object v0, Lcom/deepe/b;->C:Ljava/lang/String;

    const-string v0, "\u53bb\u5141\u8bb8"

    sput-object v0, Lcom/deepe/b;->D:Ljava/lang/String;

    const-string v0, "\u5141\u8bb8"

    sput-object v0, Lcom/deepe/b;->E:Ljava/lang/String;

    const-string v0, "\u7ee7\u7eed"

    sput-object v0, Lcom/deepe/b;->G:Ljava/lang/String;

    const-string v0, "\u9000\u51fa"

    sput-object v0, Lcom/deepe/b;->F:Ljava/lang/String;

    const-string v0, "\u6d88\u606f"

    sput-object v0, Lcom/deepe/b;->I:Ljava/lang/String;

    const-string v0, "\u8bf7\u7a0d\u5019"

    sput-object v0, Lcom/deepe/b;->H:Ljava/lang/String;

    sput-object v1, Lcom/deepe/b;->J:Ljava/lang/String;

    const-string v0, "\u786e\u5b9a\u8981\u9000\u51fa\u7a0b\u5e8f\u5417\uff1f"

    sput-object v0, Lcom/deepe/b;->K:Ljava/lang/String;

    const-string v0, "\u9000\u51fa\u63d0\u793a"

    sput-object v0, Lcom/deepe/b;->L:Ljava/lang/String;

    const-string v0, "\u9519\u8bef\u63d0\u793a"

    sput-object v0, Lcom/deepe/b;->M:Ljava/lang/String;

    const-string v0, "\u7f3a\u5c11\u5fc5\u987b\u7684\u8d44\u6e90!"

    sput-object v0, Lcom/deepe/b;->N:Ljava/lang/String;

    const-string v0, "\u5e94\u7528config\u6587\u4ef6\u635f\u574f\u6216\u4e0d\u5b58\u5728!"

    sput-object v0, Lcom/deepe/b;->O:Ljava/lang/String;

    const-string v0, "Root\u8bbe\u5907\u4e0d\u5141\u8bb8\u4f7f\u7528\u672c\u5e94\u7528!"

    sput-object v0, Lcom/deepe/b;->P:Ljava/lang/String;

    const-string v0, "\u52a0\u8f7d\u4e2d"

    sput-object v0, Lcom/deepe/b;->Q:Ljava/lang/String;

    const-string v0, "\u60f3\u4f7f\u7528\u60a8\u8bbe\u5907\u7684"

    sput-object v0, Lcom/deepe/b;->R:Ljava/lang/String;

    const-string v0, "\u8be5\u7f51\u7ad9\u7684\u5b89\u5168\u8bc1\u4e66\u6709\u95ee\u9898\u3002"

    sput-object v0, Lcom/deepe/b;->S:Ljava/lang/String;

    const-string v0, "\u4e0b\u62c9\u53ef\u4ee5\u5237\u65b0..."

    sput-object v0, Lcom/deepe/b;->T:Ljava/lang/String;

    const-string v0, "\u677e\u5f00\u53ef\u4ee5\u5237\u65b0..."

    sput-object v0, Lcom/deepe/b;->U:Ljava/lang/String;

    const-string v0, "\u5237\u65b0\u4e2d"

    sput-object v0, Lcom/deepe/b;->V:Ljava/lang/String;

    const-string v0, "\u6700\u540e\u66f4\u65b0"

    sput-object v0, Lcom/deepe/b;->W:Ljava/lang/String;

    const-string v0, "\u9009\u62e9\u53d1\u9001\u90ae\u4ef6\u7a0b\u5e8f"

    sput-object v0, Lcom/deepe/b;->X:Ljava/lang/String;

    const-string v0, "\u4e0b\u8f7d\u9644\u4ef6"

    sput-object v0, Lcom/deepe/b;->Y:Ljava/lang/String;

    const-string v0, "\u4e0b\u8f7d\u5931\u8d25"

    sput-object v0, Lcom/deepe/b;->Z:Ljava/lang/String;

    const-string v0, "\u672a\u627e\u5230\u53ef\u6267\u884c\u7684\u5e94\u7528"

    sput-object v0, Lcom/deepe/b;->aa:Ljava/lang/String;

    const-string v0, "\u8bf7\u9009\u62e9\u65e5\u671f"

    sput-object v0, Lcom/deepe/b;->ab:Ljava/lang/String;

    const-string v0, "\u8bf7\u9009\u62e9\u65f6\u95f4"

    sput-object v0, Lcom/deepe/b;->ac:Ljava/lang/String;

    const-string v0, "\u65b0\u7684\u63d0\u9192"

    sput-object v0, Lcom/deepe/b;->ad:Ljava/lang/String;

    const-string v0, "\u5e94\u7528\u7b7e\u540d\u88ab\u7be1\u6539"

    sput-object v0, Lcom/deepe/b;->ae:Ljava/lang/String;

    const-string v0, "\u65e0\u6cd5\u52a0\u8f7d\u6e05\u5355\u6587\u4ef6\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u5b58\u5728assets/widget/config.xml\u6587\u4ef6\uff0c\u5e76\u786e\u4fdd\u5176\u5b8c\u6574\u6027\u3002"

    sput-object v0, Lcom/deepe/b;->af:Ljava/lang/String;

    const-string v0, "\u7528\u6237\u540d"

    sput-object v0, Lcom/deepe/b;->ag:Ljava/lang/String;

    const-string v0, "\u5bc6\u7801"

    sput-object v0, Lcom/deepe/b;->ah:Ljava/lang/String;

    const-string v0, "\u767b\u5f55"

    sput-object v0, Lcom/deepe/b;->ai:Ljava/lang/String;

    const-string v0, "\u5173\u95ed"

    goto/16 :goto_0

    :cond_0
    const-string v0, "Got a new patch"

    sput-object v0, Lcom/deepe/b;->a:Ljava/lang/String;

    const-string v0, "Patch update"

    sput-object v0, Lcom/deepe/b;->b:Ljava/lang/String;

    const-string v0, "Update"

    sput-object v0, Lcom/deepe/b;->c:Ljava/lang/String;

    const-string v0, "Install"

    sput-object v0, Lcom/deepe/b;->d:Ljava/lang/String;

    const-string v0, "Cancel"

    sput-object v0, Lcom/deepe/b;->f:Ljava/lang/String;

    const-string v0, "Ok"

    sput-object v0, Lcom/deepe/b;->g:Ljava/lang/String;

    const-string v0, "Finish"

    sput-object v0, Lcom/deepe/b;->h:Ljava/lang/String;

    const-string v0, "alert"

    sput-object v0, Lcom/deepe/b;->i:Ljava/lang/String;

    const-string v0, "Got a new version\uff01"

    sput-object v0, Lcom/deepe/b;->m:Ljava/lang/String;

    const-string v0, "Force Update"

    sput-object v0, Lcom/deepe/b;->j:Ljava/lang/String;

    const-string v0, "Force Exit"

    sput-object v0, Lcom/deepe/b;->k:Ljava/lang/String;

    const-string v0, "Reboot"

    sput-object v0, Lcom/deepe/b;->e:Ljava/lang/String;

    const-string v0, "Update Info"

    sput-object v0, Lcom/deepe/b;->n:Ljava/lang/String;

    const-string v0, "Latest version"

    sput-object v0, Lcom/deepe/b;->o:Ljava/lang/String;

    const-string v0, "Update description"

    sput-object v0, Lcom/deepe/b;->p:Ljava/lang/String;

    const-string v0, "Release time"

    sput-object v0, Lcom/deepe/b;->q:Ljava/lang/String;

    const-string v0, "Download package"

    sput-object v0, Lcom/deepe/b;->r:Ljava/lang/String;

    const-string v0, "Download patch"

    sput-object v0, Lcom/deepe/b;->s:Ljava/lang/String;

    const-string v0, "Download success"

    sput-object v0, Lcom/deepe/b;->t:Ljava/lang/String;

    const-string v0, "Download failed"

    sput-object v0, Lcom/deepe/b;->u:Ljava/lang/String;

    const-string v2, "Under force update, You must install this new version"

    sput-object v2, Lcom/deepe/b;->l:Ljava/lang/String;

    const-string v2, "Success! It will be work on next time."

    sput-object v2, Lcom/deepe/b;->v:Ljava/lang/String;

    const-string v2, "Success! You must reboot app for work."

    sput-object v2, Lcom/deepe/b;->w:Ljava/lang/String;

    const-string v2, "Loading"

    const-string v3, "Ready"

    const-string v4, "Installing"

    const-string v5, "Ending"

    const-string v6, "error"

    filled-new-array {v3, v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/deepe/b;->x:[Ljava/lang/String;

    const-string v3, "Back"

    sput-object v3, Lcom/deepe/b;->y:Ljava/lang/String;

    const-string v3, "OK"

    sput-object v3, Lcom/deepe/b;->z:Ljava/lang/String;

    const-string v3, "Alert"

    sput-object v3, Lcom/deepe/b;->A:Ljava/lang/String;

    const-string v3, "Ignore"

    sput-object v3, Lcom/deepe/b;->B:Ljava/lang/String;

    const-string v3, "Denied"

    sput-object v3, Lcom/deepe/b;->C:Ljava/lang/String;

    const-string v3, "To Grant"

    sput-object v3, Lcom/deepe/b;->D:Ljava/lang/String;

    const-string v3, "Grant"

    sput-object v3, Lcom/deepe/b;->E:Ljava/lang/String;

    const-string v3, "Continue"

    sput-object v3, Lcom/deepe/b;->G:Ljava/lang/String;

    const-string v3, "Exit"

    sput-object v3, Lcom/deepe/b;->F:Ljava/lang/String;

    const-string v3, "Message"

    sput-object v3, Lcom/deepe/b;->I:Ljava/lang/String;

    const-string v3, "Please wait"

    sput-object v3, Lcom/deepe/b;->H:Ljava/lang/String;

    sput-object v1, Lcom/deepe/b;->J:Ljava/lang/String;

    const-string v1, "Exit Application?"

    sput-object v1, Lcom/deepe/b;->K:Ljava/lang/String;

    const-string v1, "Exit Prompt"

    sput-object v1, Lcom/deepe/b;->L:Ljava/lang/String;

    const-string v1, "Error"

    sput-object v1, Lcom/deepe/b;->M:Ljava/lang/String;

    const-string v1, "Application Broken!"

    sput-object v1, Lcom/deepe/b;->N:Ljava/lang/String;

    const-string v1, "Config File Was Missing!"

    sput-object v1, Lcom/deepe/b;->O:Ljava/lang/String;

    const-string v1, "Do Not Allow Jailbreak Device!"

    sput-object v1, Lcom/deepe/b;->P:Ljava/lang/String;

    sput-object v2, Lcom/deepe/b;->Q:Ljava/lang/String;

    const-string v1, "Request access to your "

    sput-object v1, Lcom/deepe/b;->R:Ljava/lang/String;

    const-string v1, "There are problems with the security certificate for this site."

    sput-object v1, Lcom/deepe/b;->S:Ljava/lang/String;

    const-string v1, "Pull to refresh..."

    sput-object v1, Lcom/deepe/b;->T:Ljava/lang/String;

    const-string v1, "Release to refresh..."

    sput-object v1, Lcom/deepe/b;->U:Ljava/lang/String;

    const-string v1, "Last update"

    sput-object v1, Lcom/deepe/b;->W:Ljava/lang/String;

    const-string v1, "Refreshing"

    sput-object v1, Lcom/deepe/b;->V:Ljava/lang/String;

    const-string v1, "Choose application"

    sput-object v1, Lcom/deepe/b;->X:Ljava/lang/String;

    const-string v1, "Download attachment"

    sput-object v1, Lcom/deepe/b;->Y:Ljava/lang/String;

    sput-object v0, Lcom/deepe/b;->Z:Ljava/lang/String;

    const-string v0, "Not find any application"

    sput-object v0, Lcom/deepe/b;->aa:Ljava/lang/String;

    const-string v0, "Please select a date"

    sput-object v0, Lcom/deepe/b;->ab:Ljava/lang/String;

    const-string v0, "Please select a time"

    sput-object v0, Lcom/deepe/b;->ac:Ljava/lang/String;

    const-string v0, "A new message"

    sput-object v0, Lcom/deepe/b;->ad:Ljava/lang/String;

    const-string v0, "The apk signature was tampered with"

    sput-object v0, Lcom/deepe/b;->ae:Ljava/lang/String;

    const-string v0, "Unable to load manifest file, please check whether the \"assets/widget/config.xml\" file exists and ensure its integrity."

    sput-object v0, Lcom/deepe/b;->af:Ljava/lang/String;

    const-string v0, "Name"

    sput-object v0, Lcom/deepe/b;->ag:Ljava/lang/String;

    const-string v0, "Password"

    sput-object v0, Lcom/deepe/b;->ah:Ljava/lang/String;

    const-string v0, "Sign in"

    sput-object v0, Lcom/deepe/b;->ai:Ljava/lang/String;

    const-string v0, "Close"

    :goto_0
    sput-object v0, Lcom/deepe/b;->aj:Ljava/lang/String;

    return-void
.end method
