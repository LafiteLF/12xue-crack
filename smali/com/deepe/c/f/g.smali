.class final Lcom/deepe/c/f/g;
.super Ljava/lang/Object;


# static fields
.field public static final A:Lcom/deepe/c/f/g;

.field public static final B:Lcom/deepe/c/f/g;

.field public static final C:Lcom/deepe/c/f/g;

.field public static final D:Lcom/deepe/c/f/g;

.field public static final E:Lcom/deepe/c/f/g;

.field public static final F:Lcom/deepe/c/f/g;

.field public static final G:Lcom/deepe/c/f/g;

.field public static final H:Lcom/deepe/c/f/g;

.field public static final I:Lcom/deepe/c/f/g;

.field public static final J:Lcom/deepe/c/f/g;

.field public static final K:Lcom/deepe/c/f/g;

.field public static final L:Lcom/deepe/c/f/g;

.field public static final M:Lcom/deepe/c/f/g;

.field private static final R:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/deepe/c/f/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/deepe/c/f/g;

.field public static final b:Lcom/deepe/c/f/g;

.field public static final c:Lcom/deepe/c/f/g;

.field public static final d:Lcom/deepe/c/f/g;

.field public static final e:Lcom/deepe/c/f/g;

.field public static final f:Lcom/deepe/c/f/g;

.field public static final g:Lcom/deepe/c/f/g;

.field public static final h:Lcom/deepe/c/f/g;

.field public static final i:Lcom/deepe/c/f/g;

.field public static final j:Lcom/deepe/c/f/g;

.field public static final k:Lcom/deepe/c/f/g;

.field public static final l:Lcom/deepe/c/f/g;

.field public static final m:Lcom/deepe/c/f/g;

.field public static final n:Lcom/deepe/c/f/g;

.field public static final o:Lcom/deepe/c/f/g;

.field public static final p:Lcom/deepe/c/f/g;

.field public static final q:Lcom/deepe/c/f/g;

.field public static final r:Lcom/deepe/c/f/g;

.field public static final s:Lcom/deepe/c/f/g;

.field public static final t:Lcom/deepe/c/f/g;

.field public static final u:Lcom/deepe/c/f/g;

.field public static final v:Lcom/deepe/c/f/g;

.field public static final w:Lcom/deepe/c/f/g;

.field public static final x:Lcom/deepe/c/f/g;

.field public static final y:Lcom/deepe/c/f/g;

.field public static final z:Lcom/deepe/c/f/g;


# instance fields
.field private final N:Ljava/lang/String;

.field private final O:Ljava/lang/String;

.field private final P:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Q:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "android.permission.READ_CALENDAR"

    const-string v2, "\u8bbf\u95ee\u65e5\u5386"

    const-string v3, "calendar"

    invoke-direct {v0, v1, v2, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->a:Lcom/deepe/c/f/g;

    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-virtual {v0, v2}, Lcom/deepe/c/f/g;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v3, "\u8bfb\u53d6\u65e5\u5386"

    const-string v4, "calendar-r"

    invoke-direct {v0, v1, v3, v4}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->b:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "\u5199\u5165\u65e5\u5386"

    const-string v3, "calendar-w"

    invoke-direct {v0, v2, v1, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->c:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "android.permission.CAMERA"

    const-string v2, "\u76f8\u673a"

    const-string v3, "camera"

    invoke-direct {v0, v1, v2, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->d:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "android.permission.READ_CONTACTS"

    const-string v2, "\u8054\u7cfb\u4eba"

    const-string v3, "contacts"

    invoke-direct {v0, v1, v2, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->e:Lcom/deepe/c/f/g;

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v2}, Lcom/deepe/c/f/g;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v3, "\u8bfb\u53d6\u8054\u7cfb\u4eba"

    const-string v4, "contacts-r"

    invoke-direct {v0, v1, v3, v4}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->f:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "\u5199\u5165/\u5220\u9664\u8054\u7cfb\u4eba"

    const-string v3, "contacts-w"

    invoke-direct {v0, v2, v1, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->g:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "android.permission.GET_ACCOUNTS"

    const-string v2, "\u7cfb\u7edf\u5e10\u6237"

    const-string v3, "contacts-a"

    invoke-direct {v0, v1, v2, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->h:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "location"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const-string v3, "\u4f4d\u7f6e\u4fe1\u606f"

    invoke-direct {v0, v2, v3, v1}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->i:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {v0, v4, v3, v1}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->j:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "locationAlways"

    invoke-direct {v0, v2, v3, v1}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->k:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "android.permission.RECORD_AUDIO"

    const-string v2, "\u9ea6\u514b\u98ce"

    const-string v3, "microphone"

    invoke-direct {v0, v1, v2, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->l:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "\u83b7\u53d6\u624b\u673a\u4fe1\u606f/\u76f4\u63a5\u62e8\u6253\u7535\u8bdd"

    const-string v3, "phone"

    invoke-direct {v0, v1, v2, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->m:Lcom/deepe/c/f/g;

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v2}, Lcom/deepe/c/f/g;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v3, "\u83b7\u53d6\u624b\u673a\u4fe1\u606f"

    const-string v4, "phone-r"

    invoke-direct {v0, v1, v3, v4}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->n:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "\u76f4\u63a5\u62e8\u6253\u7535\u8bdd"

    const-string v3, "phone-call"

    invoke-direct {v0, v2, v1, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->o:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "android.permission.READ_CALL_LOG"

    const-string v2, "\u8bfb\u53d6\u901a\u8bdd\u8bb0\u5f55"

    const-string v3, "phone-r-log"

    invoke-direct {v0, v1, v2, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->p:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    const-string v2, "\u5199\u5165\u901a\u8bdd\u8bb0\u5f55"

    const-string v3, "phone-w-log"

    invoke-direct {v0, v1, v2, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->q:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "android.permission.USE_SIP"

    const-string v2, "SIP\u7535\u8bdd"

    const-string v3, "phone-sip"

    invoke-direct {v0, v1, v2, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->r:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "\u7535\u8bdd"

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v3, "phone-out-call"

    invoke-direct {v0, v2, v1, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->s:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const-string v3, "phone-voice"

    invoke-direct {v0, v2, v1, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->t:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "android.permission.BODY_SENSORS"

    const-string v2, "\u8eab\u4f53\u4f20\u611f\u5668"

    const-string v3, "sensor"

    invoke-direct {v0, v1, v2, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->u:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "\u8bfb\u53d6/\u53d1\u9001\u77ed\u4fe1"

    const-string v3, "sms"

    invoke-direct {v0, v1, v2, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->v:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v2, "\u53d1\u9001\u77ed\u4fe1"

    const-string v3, "sms-s"

    invoke-direct {v0, v1, v2, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->w:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "android.permission.READ_SMS"

    const-string v2, "\u8bfb\u53d6\u77ed\u4fe1"

    const-string v3, "sms-r"

    invoke-direct {v0, v1, v2, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->y:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "android.permission.RECEIVE_SMS"

    const-string v2, "\u63a5\u6536\u77ed\u4fe1"

    const-string v3, "sms-receive"

    invoke-direct {v0, v1, v2, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->x:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "\u5f69\u4fe1"

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    const-string v3, "sms-receive-wap"

    invoke-direct {v0, v2, v1, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->z:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v2, "android.permission.RECEIVE_MMS"

    const-string v3, "sms-receive-mms"

    invoke-direct {v0, v2, v1, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->A:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "\u8bfb\u5199\u624b\u673a\u5b58\u50a8"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "storage"

    invoke-direct {v0, v2, v1, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->B:Lcom/deepe/c/f/g;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v3}, Lcom/deepe/c/f/g;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v4, "\u8bfb\u624b\u673a\u5b58\u50a8"

    const-string v5, "storage-r"

    invoke-direct {v0, v2, v4, v5}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->C:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v4, "\u5199\u624b\u673a\u5b58\u50a8"

    const-string v5, "storage-w"

    invoke-direct {v0, v3, v4, v5}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->D:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v5, "android.permission.READ_MEDIA_IMAGES"

    const/16 v6, 0x21

    const-string v7, "\u8bfb\u624b\u673a\u5b58\u50a8\u4e2d\u56fe\u7247"

    const-string v8, "image-r"

    invoke-direct {v0, v5, v7, v8, v6}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/f/g;->E:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v7, "android.permission.READ_MEDIA_VIDEO"

    const-string v8, "\u8bfb\u624b\u673a\u5b58\u50a8\u4e2d\u89c6\u9891"

    const-string v9, "video-r"

    invoke-direct {v0, v7, v8, v9, v6}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/f/g;->F:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v8, "android.permission.READ_MEDIA_AUDIO"

    const-string v9, "\u8bfb\u624b\u673a\u5b58\u50a8\u4e2d\u97f3\u9891"

    const-string v10, "audio-r"

    invoke-direct {v0, v8, v9, v10, v6}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/f/g;->G:Lcom/deepe/c/f/g;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v8, 0x1

    if-lt v0, v6, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move-object v2, v5

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v7, v3

    :goto_1
    if-eqz v0, :cond_3

    const-string v1, "\u8bfb\u5199\u624b\u673a\u591a\u5a92\u4f53\u5e93"

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v6, v8

    :goto_2
    if-eqz v0, :cond_5

    move-object v3, v5

    :cond_5
    if-eqz v0, :cond_6

    const-string v4, "\u5199\u624b\u673a\u591a\u5a92\u4f53\u5e93"

    :cond_6
    new-instance v0, Lcom/deepe/c/f/g;

    const-string v5, "photos"

    invoke-direct {v0, v2, v1, v5, v6}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/f/g;->H:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v7}, Lcom/deepe/c/f/g;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "photos-w"

    invoke-direct {v0, v3, v4, v1, v6}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/f/g;->I:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v1, "OP_POST_NOTIFICATION"

    const-string v2, "\u53d1\u5e03\u72b6\u6001\u680f\u901a\u77e5"

    const-string v3, "notification"

    invoke-direct {v0, v1, v2, v3}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/c/f/g;->J:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const/16 v1, 0x1f

    const-string v2, "android.permission.BLUETOOTH_SCAN"

    const-string v3, "\u53d1\u73b0\u548c\u914d\u5bf9\u9644\u8fd1\u7684\u84dd\u7259\u8bbe\u5907"

    const-string v4, "ble-scan"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/f/g;->K:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v2, "android.permission.BLUETOOTH_ADVERTISE"

    const-string v3, "\u5411\u9644\u8fd1\u7684\u84dd\u7259\u8bbe\u5907\u53d1\u5e03\u5e7f\u544a"

    const-string v4, "ble-ad"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/f/g;->L:Lcom/deepe/c/f/g;

    new-instance v0, Lcom/deepe/c/f/g;

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    const-string v3, "\u8fde\u63a5\u5230\u914d\u5bf9\u7684\u84dd\u7259\u8bbe\u5907"

    const-string v4, "ble-connect"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/f/g;->M:Lcom/deepe/c/f/g;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->a:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->c:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->b:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->d:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->e:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->g:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->f:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->h:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->i:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->j:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->k:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->l:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->m:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->n:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->o:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->p:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->q:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->r:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->s:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->t:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->u:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->v:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->w:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->y:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->x:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->z:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->A:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->B:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->D:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->C:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->H:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->I:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->E:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->F:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->G:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->J:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->K:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->L:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    sget-object v1, Lcom/deepe/c/f/g;->M:Lcom/deepe/c/f/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/deepe/c/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/deepe/c/f/g;->N:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepe/c/f/g;->O:Ljava/lang/String;

    iput p4, p0, Lcom/deepe/c/f/g;->Q:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/deepe/c/f/g;->P:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/deepe/c/f/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/f/r;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/c/f/g;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/deepe/c/f/r;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/deepe/c/f/g;->e(Ljava/lang/String;)Lcom/deepe/c/f/g;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/deepe/c/f/g;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/deepe/c/f/g;->d(Ljava/lang/String;)Lcom/deepe/c/f/g;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/deepe/c/f/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Lcom/deepe/c/f/g;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/f/g;

    invoke-virtual {v2, p0}, Lcom/deepe/c/f/g;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2
.end method

.method public static e(Ljava/lang/String;)Lcom/deepe/c/f/g;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/f/g;

    invoke-virtual {v2, p0}, Lcom/deepe/c/f/g;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, p0}, Lcom/deepe/c/f/g;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    return-object v2
.end method

.method public static f(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/deepe/c/f/g;->R:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/f/g;

    invoke-virtual {v2, p0}, Lcom/deepe/c/f/g;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/deepe/c/f/g;->c()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/f/g;->P:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/f/g;->P:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/c/f/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/f/g;->N:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/f/g;->O:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/f/g;->O:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/f/g;->Q:I

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/f/g;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepe/c/f/g;->N:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/deepe/c/f/g;->O:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepe/c/f/g;->P:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
