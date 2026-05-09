.class public Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$onTapUpListener;
    }
.end annotation


# static fields
.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final ITEM_OFFSET_PERCENT:I = 0x14

.field private static final PADDING:I = 0xa

.field private static final SHADOWS_COLORS:[I


# instance fields
.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private clickingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentItem:I

.field private dataObserver:Landroid/database/DataSetObserver;

.field private firstItem:I

.field isCyclic:Z

.field private isFirst:Z

.field private isScrollingPerformed:Z

.field private itemHeight:I

.field private itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

.field private mOnTapUpListener:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$onTapUpListener;

.field private params:Landroid/widget/LinearLayout$LayoutParams;

.field private recycle:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;

.field private scrollDown:Z

.field private scroller:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

.field scrollingListener:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$ScrollingListener;

.field private scrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollingOffset:I

.field private size:I

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private viewAdapter:Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;

.field private visibleItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 54
    fill-array-data v0, :array_0

    sput-object v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->SHADOWS_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0xeeeeef
        0xaaaaaa
        0xaaaaaa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 128
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->currentItem:I

    const/4 v1, 0x5

    .line 69
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->visibleItems:I

    .line 72
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemHeight:I

    .line 88
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->isCyclic:Z

    .line 100
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;-><init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->recycle:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;

    .line 103
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->changingListeners:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingListeners:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->clickingListeners:Ljava/util/List;

    .line 146
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;-><init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingListener:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$ScrollingListener;

    .line 223
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$2;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$2;-><init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    const/4 v0, 0x1

    .line 759
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->isFirst:Z

    .line 129
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 66
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->currentItem:I

    const/4 v0, 0x5

    .line 69
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->visibleItems:I

    .line 72
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemHeight:I

    .line 88
    iput-boolean p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->isCyclic:Z

    .line 100
    new-instance p2, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;

    invoke-direct {p2, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;-><init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->recycle:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;

    .line 103
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->changingListeners:Ljava/util/List;

    .line 104
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingListeners:Ljava/util/List;

    .line 105
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->clickingListeners:Ljava/util/List;

    .line 146
    new-instance p2, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;

    invoke-direct {p2, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;-><init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingListener:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$ScrollingListener;

    .line 223
    new-instance p2, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$2;

    invoke-direct {p2, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$2;-><init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    const/4 p2, 0x1

    .line 759
    iput-boolean p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->isFirst:Z

    .line 121
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 66
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->currentItem:I

    const/4 p3, 0x5

    .line 69
    iput p3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->visibleItems:I

    .line 72
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemHeight:I

    .line 88
    iput-boolean p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->isCyclic:Z

    .line 100
    new-instance p2, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;

    invoke-direct {p2, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;-><init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->recycle:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;

    .line 103
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->changingListeners:Ljava/util/List;

    .line 104
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingListeners:Ljava/util/List;

    .line 105
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->clickingListeners:Ljava/util/List;

    .line 146
    new-instance p2, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;

    invoke-direct {p2, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;-><init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingListener:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$ScrollingListener;

    .line 223
    new-instance p2, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$2;

    invoke-direct {p2, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$2;-><init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    const/4 p2, 0x1

    .line 759
    iput-boolean p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->isFirst:Z

    .line 113
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->isScrollingPerformed:Z

    return p0
.end method

.method static synthetic access$002(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->isScrollingPerformed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingOffset:I

    return p0
.end method

.method static synthetic access$202(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scroller:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    return-object p0
.end method

.method private addViewItem(IZ)Z
    .locals 1

    .line 999
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getItemView(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1002
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    invoke-virtual {p2, p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 1004
    :cond_0
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private buildViewForMeasuring()V
    .locals 5

    const-string v0, "WheelView buildView"

    const-string v1, "buildViewForMeasuring"

    .line 968
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    const-string v1, "WheelView buildViewForMeasuring"

    if-eqz v0, :cond_0

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " begin itemsLayout size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    .line 971
    invoke-virtual {v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 970
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->recycle:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->firstItem:I

    new-instance v4, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;

    invoke-direct {v4}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;-><init>()V

    invoke-virtual {v0, v2, v3, v4}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;)I

    goto :goto_0

    .line 974
    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->createItemsLayout()V

    .line 976
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " middle itemsLayout size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    .line 977
    invoke-virtual {v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 976
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->visibleItems:I

    div-int/lit8 v0, v0, 0x2

    .line 980
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->currentItem:I

    add-int/2addr v2, v0

    :goto_1
    iget v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->currentItem:I

    sub-int/2addr v3, v0

    if-lt v2, v3, :cond_2

    const/4 v3, 0x1

    .line 981
    invoke-direct {p0, v2, v3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->addViewItem(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 982
    iput v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->firstItem:I

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 985
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " end itemsLayout size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    .line 986
    invoke-virtual {v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 985
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private calculateLayoutWidth(II)I
    .locals 4

    .line 532
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->initResourcesIfNecessary()V

    .line 535
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    const/4 v1, 0x0

    .line 538
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 539
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 538
    invoke-virtual {v0, v2, v3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->measure(II)V

    .line 541
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x14

    .line 549
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v3, -0x80000000

    if-ne p2, v3, :cond_1

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 556
    :goto_0
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    add-int/lit8 v0, p1, -0x14

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 557
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 556
    invoke-virtual {p2, v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->measure(II)V

    .line 560
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "width ===> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "debug"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private checkClick(F)V
    .locals 7

    .line 732
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->isScrollingPerformed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    float-to-int p1, p1

    .line 736
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    if-lez p1, :cond_1

    .line 738
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getItemHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    goto :goto_0

    .line 740
    :cond_1
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getItemHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    :goto_0
    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    .line 742
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getItemHeight()I

    move-result p1

    int-to-double v4, p1

    div-double/2addr v0, v4

    .line 743
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tempItem="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "checkClick"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    double-to-int p1, v0

    cmpg-double v2, v0, v2

    const-wide/16 v3, 0x0

    if-gez v2, :cond_2

    cmpl-double v2, v0, v3

    if-lez v2, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    cmpl-double v2, v0, v5

    if-lez v2, :cond_3

    cmpg-double v0, v0, v3

    if-gez v0, :cond_3

    const/4 p1, -0x1

    .line 750
    :cond_3
    :goto_1
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->currentItem:I

    add-int/2addr v0, p1

    if-eqz p1, :cond_4

    .line 751
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->isValidItemIndex(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 752
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->notifyClickListenersAboutClick(I)V

    .line 753
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setCurrentItem(I)V

    :cond_4
    return-void
.end method

.method private createItemsLayout()V
    .locals 3

    .line 957
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    if-nez v0, :cond_0

    .line 958
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    .line 959
    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method private doScroll(I)V
    .locals 8

    .line 769
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 773
    :cond_0
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingOffset:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 774
    :goto_0
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollDown:Z

    .line 775
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getItemHeight()I

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x23

    .line 777
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result p1

    .line 779
    :cond_2
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingOffset:I

    div-int/2addr v2, p1

    .line 781
    iget v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->currentItem:I

    sub-int/2addr v3, v2

    .line 782
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->viewAdapter:Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;

    invoke-interface {v4}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v4

    .line 784
    iget v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingOffset:I

    rem-int/2addr v5, p1

    .line 785
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v7, p1, 0x2

    if-gt v6, v7, :cond_3

    move v5, v0

    .line 788
    :cond_3
    iget-boolean v6, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->isCyclic:Z

    if-eqz v6, :cond_7

    if-lez v4, :cond_7

    if-lez v5, :cond_4

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-gez v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_5
    :goto_1
    if-gez v3, :cond_6

    add-int/2addr v3, v4

    goto :goto_1

    .line 800
    :cond_6
    rem-int/2addr v3, v4

    goto :goto_2

    :cond_7
    if-gez v3, :cond_8

    .line 804
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->currentItem:I

    move v3, v0

    goto :goto_2

    :cond_8
    if-lt v3, v4, :cond_9

    .line 807
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->currentItem:I

    sub-int/2addr v2, v4

    add-int/2addr v2, v1

    add-int/lit8 v3, v4, -0x1

    goto :goto_2

    :cond_9
    if-lez v3, :cond_a

    if-lez v5, :cond_a

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_b

    if-gez v5, :cond_b

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, -0x1

    .line 817
    :cond_b
    :goto_2
    iget v4, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->currentItem:I

    if-eq v3, v4, :cond_c

    goto :goto_3

    :cond_c
    move v1, v0

    .line 818
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEquals = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WheelView"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentItem = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->currentItem:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget v4, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingOffset:I

    if-eqz v1, :cond_d

    .line 823
    invoke-virtual {p0, v3, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setCurrentItem(IZ)V

    goto :goto_4

    .line 825
    :cond_d
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->invalidate()V

    :goto_4
    mul-int/2addr v2, p1

    sub-int/2addr v4, v2

    .line 828
    iput v4, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingOffset:I

    .line 829
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getHeight()I

    move-result p1

    if-le v4, p1, :cond_e

    .line 830
    iget p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getHeight()I

    move-result v0

    rem-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingOffset:I

    :cond_e
    return-void
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .locals 9

    .line 675
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 676
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getItemHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    const-wide v3, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 680
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 681
    sget-object v2, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Constans;->selectorDividerColor:Ljava/lang/String;

    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x1

    .line 682
    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sub-int v2, v0, v1

    int-to-float v6, v2

    .line 683
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getWidth()I

    move-result v2

    int-to-float v5, v2

    const/4 v3, 0x0

    move-object v2, p1

    move v4, v6

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v0, v1

    int-to-float v6, v0

    .line 684
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 3

    .line 654
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 656
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->currentItem:I

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->firstItem:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getItemHeight()I

    move-result v1

    mul-int/2addr v0, v1

    .line 657
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getItemHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    neg-int v0, v0

    .line 659
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingOffset:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    const/high16 v2, 0x41200000    # 10.0f

    .line 660
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 661
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->updateTranslateScrollingOffset(I)V

    .line 662
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 664
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 5

    .line 638
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getItemHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 639
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 640
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 642
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 643
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 644
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getDesiredHeight(Landroid/widget/LinearLayout;)I
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 494
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemHeight:I

    .line 498
    :cond_0
    iget p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemHeight:I

    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->visibleItems:I

    mul-int/2addr v0, p1

    mul-int/lit8 p1, p1, 0x14

    div-int/lit8 p1, p1, 0x32

    sub-int/2addr v0, p1

    .line 501
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getSuggestedMinimumHeight()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getItemHeight()I
    .locals 2

    .line 510
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemHeight:I

    if-eqz v0, :cond_0

    return v0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemHeight:I

    return v0

    .line 519
    :cond_1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->visibleItems:I

    div-int/2addr v0, v1

    return v0
.end method

.method private getItemView(I)Landroid/view/View;
    .locals 3

    .line 1033
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->viewAdapter:Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->viewAdapter:Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 1037
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1038
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->viewAdapter:Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->recycle:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;

    .line 1039
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;->getEmptyItem()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    invoke-interface {p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;->getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    if-gez p1, :cond_2

    add-int/2addr p1, v0

    goto :goto_0

    .line 1045
    :cond_2
    rem-int/2addr p1, v0

    .line 1046
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->viewAdapter:Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->recycle:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;->getItem()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    invoke-interface {v0, p1, v1, v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getItemsRange()Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;
    .locals 5

    .line 853
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getItemHeight()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 857
    :cond_0
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->currentItem:I

    const/4 v1, 0x1

    .line 860
    :goto_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getItemHeight()I

    move-result v2

    mul-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 865
    :cond_1
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingOffset:I

    if-eqz v2, :cond_3

    if-lez v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 872
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingOffset:I

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getItemHeight()I

    move-result v3

    div-int/2addr v2, v3

    sub-int/2addr v0, v2

    int-to-double v3, v1

    int-to-double v1, v2

    .line 874
    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    add-double/2addr v3, v1

    double-to-int v1, v3

    .line 876
    :cond_3
    new-instance v2, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;

    invoke-direct {v2, v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;-><init>(II)V

    return-object v2
.end method

.method private initData(Landroid/content/Context;)V
    .locals 3

    .line 139
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->params:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v0, 0x11

    .line 140
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 141
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->params:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v1

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 142
    new-instance p1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingListener:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$ScrollingListener;

    invoke-direct {p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$ScrollingListener;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scroller:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    return-void
.end method

.method private initResourcesIfNecessary()V
    .locals 0

    return-void
.end method

.method private isValidItemIndex(I)Z
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->viewAdapter:Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;

    if-eqz v0, :cond_1

    .line 1020
    invoke-interface {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->isCyclic:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->viewAdapter:Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;

    .line 1022
    invoke-interface {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private layout(II)V
    .locals 2

    add-int/lit8 p1, p1, -0x14

    .line 614
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->layout(IIII)V

    return-void
.end method

.method private rebuildItems()Z
    .locals 7

    const-string v0, "WheelView buildView"

    const-string v1, "rebuildItems"

    .line 885
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " begin itemsLayout size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    .line 887
    invoke-virtual {v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 886
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getItemsRange()Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;

    move-result-object v0

    .line 890
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    const/4 v2, 0x0

    const-string v3, "WheelView"

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  range first = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;->getFirst()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  range last = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;->getLast()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->recycle:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    iget v6, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->firstItem:I

    invoke-virtual {v1, v5, v6, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;)I

    move-result v1

    .line 894
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  first = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->firstItem:I

    if-eq v5, v1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v2

    .line 896
    :goto_0
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->firstItem:I

    goto :goto_1

    .line 898
    :cond_1
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->createItemsLayout()V

    move v5, v4

    :goto_1
    if-nez v5, :cond_4

    .line 903
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->firstItem:I

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;->getFirst()I

    move-result v5

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    .line 904
    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;->getCount()I

    move-result v5

    if-eq v1, v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v4

    .line 907
    :cond_4
    :goto_3
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->firstItem:I

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;->getFirst()I

    move-result v6

    if-le v1, v6, :cond_6

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->firstItem:I

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;->getLast()I

    move-result v6

    if-gt v1, v6, :cond_6

    .line 908
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->firstItem:I

    sub-int/2addr v1, v4

    :goto_4
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;->getFirst()I

    move-result v6

    if-lt v1, v6, :cond_7

    .line 909
    invoke-direct {p0, v1, v4}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->addViewItem(IZ)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_5

    .line 912
    :cond_5
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->firstItem:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 915
    :cond_6
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;->getFirst()I

    move-result v1

    iput v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->firstItem:I

    .line 917
    :cond_7
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " middle itemsLayout size = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    .line 918
    invoke-virtual {v4}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->getChildCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 917
    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  firstItem = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->firstItem:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  range size = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;->getCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->firstItem:I

    .line 922
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    invoke-virtual {v4}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->getChildCount()I

    move-result v4

    :goto_6
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_9

    .line 923
    iget v6, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->firstItem:I

    add-int/2addr v6, v4

    invoke-direct {p0, v6, v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->addViewItem(IZ)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    .line 924
    invoke-virtual {v6}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->getChildCount()I

    move-result v6

    if-nez v6, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 928
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " end itemsLayout size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    .line 929
    invoke-virtual {v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 928
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->firstItem:I

    .line 936
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->size:I

    return v5
.end method

.method private updateView()V
    .locals 2

    .line 947
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->rebuildItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->calculateLayoutWidth(II)I

    .line 949
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->layout(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelChangedListener;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addClickingListener(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelClickedListener;)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScrollingListener(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelScrollListener;)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCurrentItem()I
    .locals 1

    .line 361
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->currentItem:I

    return v0
.end method

.method public getViewAdapter()Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->viewAdapter:Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->visibleItems:I

    return v0
.end method

.method public invalidateWheel(Z)V
    .locals 3

    const-string v0, "WheelView buildView"

    const-string v1, "invalidateWheel"

    .line 448
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 450
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->recycle:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;->clearAll()V

    .line 451
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    if-eqz p1, :cond_0

    .line 452
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->removeAllViews()V

    :cond_0
    const/4 p1, 0x0

    .line 454
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingOffset:I

    goto :goto_0

    .line 455
    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    if-eqz p1, :cond_2

    .line 457
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->recycle:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->firstItem:I

    new-instance v2, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;

    invoke-direct {v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;-><init>()V

    invoke-virtual {v0, p1, v1, v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/uzmap/pkg/uzmodules/UIActionSelector/widget/ItemsRange;)I

    .line 460
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->invalidate()V

    return-void
.end method

.method public isCyclic()Z
    .locals 1

    .line 427
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners(II)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelChangedListener;

    .line 284
    invoke-interface {v1, p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelChangedListener;->onChanged(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyClickListenersAboutClick(I)V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelClickedListener;

    .line 351
    invoke-interface {v1, p0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelClickedListener;->onItemClicked(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelScrollListener;

    .line 322
    invoke-interface {v1, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelScrollListener;->onScrollingFinished(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelScrollListener;

    .line 313
    invoke-interface {v1, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelScrollListener;->onScrollingStarted(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 619
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 621
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->viewAdapter:Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 622
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->updateView()V

    .line 624
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 625
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->drawCenterRect(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    const-string p1, "WheelView buildView"

    const-string v0, "onLayout"

    .line 599
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 600
    invoke-direct {p0, p4, p5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->layout(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    const-string v0, "WheelView buildView"

    const-string v1, "onMeasure"

    .line 567
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 569
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 570
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 571
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 573
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->buildViewForMeasuring()V

    .line 575
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->calculateLayoutWidth(II)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->itemsLayout:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getDesiredHeight(Landroid/widget/LinearLayout;)I

    move-result v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    .line 587
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v0

    .line 593
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WheelView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 689
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getViewAdapter()Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 693
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->mOnTapUpListener:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$onTapUpListener;

    if-eqz v0, :cond_4

    .line 721
    invoke-interface {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$onTapUpListener;->onTapUp()V

    goto :goto_0

    .line 695
    :cond_2
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 696
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 713
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->checkClick(F)V

    .line 715
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->mOnTapUpListener:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$onTapUpListener;

    if-eqz v0, :cond_4

    .line 716
    invoke-interface {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$onTapUpListener;->onTapUp()V

    .line 726
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scroller:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method public removeChangingListener(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelChangedListener;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeClickingListener(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelClickedListener;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeScrollingListener(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelScrollListener;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public scroll(II)V
    .locals 1

    .line 843
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getItemHeight()I

    move-result v0

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingOffset:I

    sub-int/2addr p1, v0

    .line 844
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scroller:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;->scroll(II)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->viewAdapter:Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->viewAdapter:Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_3

    .line 379
    :cond_1
    iget-boolean v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->isCyclic:Z

    if-eqz v1, :cond_7

    :goto_0
    if-gez p1, :cond_2

    add-int/2addr p1, v0

    goto :goto_0

    .line 383
    :cond_2
    rem-int/2addr p1, v0

    .line 388
    :cond_3
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->currentItem:I

    if-eq p1, v1, :cond_7

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    sub-int p2, p1, v1

    .line 391
    iget-boolean v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->isCyclic:Z

    if-eqz v3, :cond_5

    .line 392
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->currentItem:I

    .line 393
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr v0, p1

    .line 394
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_5

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_1

    :cond_4
    neg-int p1, v0

    move p2, p1

    .line 398
    :cond_5
    :goto_1
    invoke-virtual {p0, p2, v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scroll(II)V

    goto :goto_2

    .line 400
    :cond_6
    iput v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scrollingOffset:I

    .line 403
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->currentItem:I

    .line 404
    invoke-virtual {p0, v1, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->notifyChangingListeners(II)V

    .line 405
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->invalidate()V

    :cond_7
    :goto_2
    return-void
.end method

.method public setCyclic(Z)V
    .locals 0

    .line 437
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->isCyclic:Z

    const/4 p1, 0x0

    .line 438
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->invalidateWheel(Z)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scroller:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setOnTapUpListener(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$onTapUpListener;)V
    .locals 0

    .line 1063
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->mOnTapUpListener:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$onTapUpListener;

    return-void
.end method

.method public setViewAdapter(Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->viewAdapter:Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;

    if-eqz v0, :cond_0

    .line 244
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 246
    :cond_0
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->viewAdapter:Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;

    if-eqz p1, :cond_1

    .line 248
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    const/4 p1, 0x1

    .line 250
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->isFirst:Z

    .line 251
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->invalidateWheel(Z)V

    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->visibleItems:I

    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .line 1053
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->scroller:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;->stopScrolling()V

    return-void
.end method
