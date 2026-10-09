.class final Lio/sentry/android/core/AnrV2Integration$ParseResult;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AnrV2Integration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParseResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;
    }
.end annotation


# instance fields
.field public final a:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

.field public final b:[B

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->a:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->b:[B

    .line 8
    .line 9
    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->c:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;[B)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->a:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 16
    iput-object p2, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->b:[B

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->c:Ljava/util/List;

    .line 18
    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;[BLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->a:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 21
    iput-object p2, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->b:[B

    .line 22
    iput-object p3, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->c:Ljava/util/List;

    .line 23
    iput-object p4, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->d:Ljava/util/ArrayList;

    return-void
.end method
