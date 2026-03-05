.class Lcom/uzmap/pkg/uzcore/external/f$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/external/f$a;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/external/f$a;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/external/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/external/f$a$1;->a:Lcom/uzmap/pkg/uzcore/external/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/external/f$a$1;->a:Lcom/uzmap/pkg/uzcore/external/f$a;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/external/f$a;->cancel()V

    return-void
.end method
