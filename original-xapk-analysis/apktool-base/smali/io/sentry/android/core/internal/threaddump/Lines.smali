.class public final Lio/sentry/android/core/internal/threaddump/Lines;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:I

.field public c:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/core/internal/threaddump/Lines;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lio/sentry/android/core/internal/threaddump/Lines;->b:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Lio/sentry/android/core/internal/threaddump/Line;
    .locals 2

    .line 1
    iget v0, p0, Lio/sentry/android/core/internal/threaddump/Lines;->c:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lio/sentry/android/core/internal/threaddump/Lines;->b:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    add-int/lit8 v1, v0, 0x1

    .line 10
    .line 11
    iput v1, p0, Lio/sentry/android/core/internal/threaddump/Lines;->c:I

    .line 12
    .line 13
    iget-object p0, p0, Lio/sentry/android/core/internal/threaddump/Lines;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lio/sentry/android/core/internal/threaddump/Line;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method
