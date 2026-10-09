.class public final synthetic Lio/sentry/android/replay/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic j:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/replay/c;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final i(Lio/sentry/IScope;)V
    .locals 1

    .line 1
    sget v0, Lio/sentry/android/replay/ReplayIntegration;->A:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lio/sentry/IScope;->D()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x2e

    .line 13
    .line 14
    invoke-static {p1, v0, p1}, Lkotlin/text/StringsKt;->M(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iget-object p0, p0, Lio/sentry/android/replay/c;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 21
    .line 22
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 23
    .line 24
    return-void
.end method
