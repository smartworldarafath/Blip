.class public final Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;
.super Lkotlinx/serialization/json/internal/Composer;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final c:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/JsonToStringWriter;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/Composer;-><init>(Lkotlinx/serialization/json/internal/JsonToStringWriter;)V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;->c:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(B)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    and-int/lit16 p1, p1, 0xff

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->h(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    and-int/lit16 p1, p1, 0xff

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->f(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;->c:Z

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->toUnsignedString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->h(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final e(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;->c:Z

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->h(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final g(S)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;->c:Z

    .line 2
    .line 3
    const v1, 0xffff

    .line 4
    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    and-int/2addr p1, v1

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->h(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    and-int/2addr p1, v1

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->f(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
