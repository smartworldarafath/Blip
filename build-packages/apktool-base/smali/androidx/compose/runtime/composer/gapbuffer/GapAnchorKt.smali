.class public abstract Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;
    .locals 2

    .line 1
    instance-of v0, p0, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p0, v1

    .line 10
    :goto_0
    if-eqz p0, :cond_1

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    const-string p0, "Inconsistent composition"

    .line 14
    .line 15
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lf7;->h()V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method
