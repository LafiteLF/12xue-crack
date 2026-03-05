.class Lcom/uzmap/pkg/uzcore/uzmodule/a/h;
.super Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;


# static fields
.field private static final a:Lcom/uzmap/pkg/uzcore/uzmodule/a/h;

.field private static final b:Lcom/uzmap/pkg/uzcore/uzmodule/a/h;

.field private static final c:Lcom/uzmap/pkg/uzcore/uzmodule/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/h;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/h;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/h;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/h;

    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/h;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/h;-><init>(Lorg/json/JSONObject;)V

    sput-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/h;->b:Lcom/uzmap/pkg/uzcore/uzmodule/a/h;

    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/h;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/h;-><init>(Lorg/json/JSONArray;)V

    sput-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/h;->c:Lcom/uzmap/pkg/uzcore/uzmodule/a/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(I)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONArray;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Z)V

    return-void
.end method

.method public static a()Lcom/uzmap/pkg/uzcore/uzmodule/a/h;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/h;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/h;

    return-object v0
.end method

.method public static b()Lcom/uzmap/pkg/uzcore/uzmodule/a/h;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/h;->b:Lcom/uzmap/pkg/uzcore/uzmodule/a/h;

    return-object v0
.end method

.method public static c()Lcom/uzmap/pkg/uzcore/uzmodule/a/h;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/h;->c:Lcom/uzmap/pkg/uzcore/uzmodule/a/h;

    return-object v0
.end method
