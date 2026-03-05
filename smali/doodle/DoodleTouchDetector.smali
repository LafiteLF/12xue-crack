.class public Ldoodle/DoodleTouchDetector;
.super Landroids/TouchGestureDetector;
.source "DoodleTouchDetector.java"

# interfaces
.implements Ldoodle/core/IDoodleTouchDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroids/TouchGestureDetector$IOnTouchGestureListener;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroids/TouchGestureDetector;-><init>(Landroid/content/Context;Landroids/TouchGestureDetector$IOnTouchGestureListener;)V

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Ldoodle/DoodleTouchDetector;->setScaleSpanSlop(I)V

    .line 14
    invoke-virtual {p0, p1}, Ldoodle/DoodleTouchDetector;->setScaleMinSpan(I)V

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Ldoodle/DoodleTouchDetector;->setIsLongpressEnabled(Z)V

    .line 17
    invoke-virtual {p0, p1}, Ldoodle/DoodleTouchDetector;->setIsScrollAfterScaled(Z)V

    return-void
.end method
