.class public Landroids/views/KeyboardLayout;
.super Landroid/widget/FrameLayout;
.source "KeyboardLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroids/views/KeyboardLayout$KeyboardLayoutListener;,
        Landroids/views/KeyboardLayout$KeyboardOnGlobalChangeListener;
    }
.end annotation


# instance fields
.field private mIsKeyboardActive:Z

.field private mKeyboardHeight:I

.field private mListener:Landroids/views/KeyboardLayout$KeyboardLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, p1, v0, v1}, Landroids/views/KeyboardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Landroids/views/KeyboardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Landroids/views/KeyboardLayout;->mIsKeyboardActive:Z

    .line 18
    iput p1, p0, Landroids/views/KeyboardLayout;->mKeyboardHeight:I

    .line 31
    invoke-virtual {p0}, Landroids/views/KeyboardLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Landroids/views/KeyboardLayout$KeyboardOnGlobalChangeListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Landroids/views/KeyboardLayout$KeyboardOnGlobalChangeListener;-><init>(Landroids/views/KeyboardLayout;Landroids/views/KeyboardLayout$1;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$102(Landroids/views/KeyboardLayout;I)I
    .locals 0

    .line 14
    iput p1, p0, Landroids/views/KeyboardLayout;->mKeyboardHeight:I

    return p1
.end method

.method static synthetic access$202(Landroids/views/KeyboardLayout;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Landroids/views/KeyboardLayout;->mIsKeyboardActive:Z

    return p1
.end method

.method static synthetic access$300(Landroids/views/KeyboardLayout;)Landroids/views/KeyboardLayout$KeyboardLayoutListener;
    .locals 0

    .line 14
    iget-object p0, p0, Landroids/views/KeyboardLayout;->mListener:Landroids/views/KeyboardLayout$KeyboardLayoutListener;

    return-object p0
.end method


# virtual methods
.method public getKeyboardHeight()I
    .locals 1

    .line 85
    iget v0, p0, Landroids/views/KeyboardLayout;->mKeyboardHeight:I

    return v0
.end method

.method public getKeyboardListener()Landroids/views/KeyboardLayout$KeyboardLayoutListener;
    .locals 1

    .line 72
    iget-object v0, p0, Landroids/views/KeyboardLayout;->mListener:Landroids/views/KeyboardLayout$KeyboardLayoutListener;

    return-object v0
.end method

.method public isKeyboardActive()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Landroids/views/KeyboardLayout;->mIsKeyboardActive:Z

    return v0
.end method

.method public setKeyboardListener(Landroids/views/KeyboardLayout$KeyboardLayoutListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Landroids/views/KeyboardLayout;->mListener:Landroids/views/KeyboardLayout$KeyboardLayoutListener;

    return-void
.end method
