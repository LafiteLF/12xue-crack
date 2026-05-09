.class Lcom/uzmap/pkg/uzcore/external/f$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/external/f$b;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/external/f$b;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/external/f$b;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/external/f$b$1;->a:Lcom/uzmap/pkg/uzcore/external/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/external/f$b$1;->a:Lcom/uzmap/pkg/uzcore/external/f$b;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/external/f$b;->cancel()V

    return-void
.end method
