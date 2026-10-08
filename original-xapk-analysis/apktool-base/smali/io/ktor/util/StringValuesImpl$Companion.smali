.class final Lio/ktor/util/StringValuesImpl$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/util/StringValuesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static final a(I)I
    .locals 1

    .line 1
    sget v0, Lio/ktor/util/StringValuesImpl;->h:I

    .line 2
    .line 3
    add-int/lit8 p0, p0, -0x1

    .line 4
    .line 5
    ushr-int/lit8 v0, p0, 0x1

    .line 6
    .line 7
    or-int/2addr p0, v0

    .line 8
    ushr-int/lit8 v0, p0, 0x2

    .line 9
    .line 10
    or-int/2addr p0, v0

    .line 11
    ushr-int/lit8 v0, p0, 0x4

    .line 12
    .line 13
    or-int/2addr p0, v0

    .line 14
    ushr-int/lit8 v0, p0, 0x8

    .line 15
    .line 16
    or-int/2addr p0, v0

    .line 17
    ushr-int/lit8 v0, p0, 0x10

    .line 18
    .line 19
    or-int/2addr p0, v0

    .line 20
    const/4 v0, 0x4

    .line 21
    if-ge p0, v0, :cond_0

    .line 22
    .line 23
    return v0

    .line 24
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 25
    .line 26
    return p0
.end method
