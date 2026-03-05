.class public Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AdapterWheel;
.super Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;
.source "AdapterWheel.java"


# instance fields
.field private adapter:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelAdapter;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AdapterWheel;->adapter:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelAdapter;

    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelAdapter;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AdapterWheel;->adapter:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelAdapter;

    return-object v0
.end method

.method protected getItemText(I)Ljava/lang/CharSequence;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AdapterWheel;->adapter:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelAdapter;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemsCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AdapterWheel;->adapter:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelAdapter;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelAdapter;->getItemsCount()I

    move-result v0

    return v0
.end method
