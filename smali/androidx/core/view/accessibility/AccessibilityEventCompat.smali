.class public abstract Landroidx/core/view/accessibility/AccessibilityEventCompat;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/accessibility/AccessibilityEventCompat$Api34Impl;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/core/view/accessibility/AccessibilityEventCompat$Api34Impl;->a(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
