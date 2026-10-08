.class public final Lcoil3/network/NetworkFetcher$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/fetch/Fetcher$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/network/NetworkFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcoil3/fetch/Fetcher$Factory<",
        "Lcoil3/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lkotlin/Lazy;

.field public final b:Lkotlin/Lazy;

.field public final c:Lcoil3/network/internal/SingleParameterLazy;

.field public final d:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lx9;)V
    .locals 4

    .line 1
    new-instance v0, Lx9;

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lx9;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcoil3/network/NetworkFetcher$Factory$2;->r:Lcoil3/network/NetworkFetcher$Factory$2;

    .line 9
    .line 10
    new-instance v2, Lx9;

    .line 11
    .line 12
    const/16 v3, 0x18

    .line 13
    .line 14
    invoke-direct {v2, v3}, Lx9;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcoil3/network/NetworkFetcher$Factory;->a:Lkotlin/Lazy;

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcoil3/network/NetworkFetcher$Factory;->b:Lkotlin/Lazy;

    .line 31
    .line 32
    invoke-static {v1}, Lcoil3/network/internal/SingleParameterLazyKt;->a(Lkotlin/jvm/functions/Function1;)Lcoil3/network/internal/SingleParameterLazy;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcoil3/network/NetworkFetcher$Factory;->c:Lcoil3/network/internal/SingleParameterLazy;

    .line 37
    .line 38
    invoke-static {v2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcoil3/network/NetworkFetcher$Factory;->d:Lkotlin/Lazy;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/RealImageLoader;)Lcoil3/fetch/Fetcher;
    .locals 8

    .line 1
    check-cast p1, Lcoil3/Uri;

    .line 2
    .line 3
    iget-object v0, p1, Lcoil3/Uri;->c:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "http"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p1, Lcoil3/Uri;->c:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "https"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :cond_1
    :goto_0
    new-instance v0, Lcoil3/network/NetworkFetcher;

    .line 27
    .line 28
    iget-object v1, p1, Lcoil3/Uri;->a:Ljava/lang/String;

    .line 29
    .line 30
    new-instance p1, Lkb;

    .line 31
    .line 32
    const/4 v2, 0x4

    .line 33
    invoke-direct {p1, v2, p3}, Lkb;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iget-object p1, p0, Lcoil3/network/NetworkFetcher$Factory;->c:Lcoil3/network/internal/SingleParameterLazy;

    .line 41
    .line 42
    iget-object p3, p2, Lcoil3/request/Options;->a:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {p1, p3}, Lcoil3/network/internal/SingleParameterLazy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v6, Lkotlin/InitializedLazyImpl;

    .line 49
    .line 50
    invoke-direct {v6, p1}, Lkotlin/InitializedLazyImpl;-><init>(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v7, p0, Lcoil3/network/NetworkFetcher$Factory;->d:Lkotlin/Lazy;

    .line 54
    .line 55
    iget-object v3, p0, Lcoil3/network/NetworkFetcher$Factory;->a:Lkotlin/Lazy;

    .line 56
    .line 57
    iget-object v5, p0, Lcoil3/network/NetworkFetcher$Factory;->b:Lkotlin/Lazy;

    .line 58
    .line 59
    move-object v2, p2

    .line 60
    invoke-direct/range {v0 .. v7}, Lcoil3/network/NetworkFetcher;-><init>(Ljava/lang/String;Lcoil3/request/Options;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/InitializedLazyImpl;Lkotlin/Lazy;)V

    .line 61
    .line 62
    .line 63
    return-object v0
.end method
