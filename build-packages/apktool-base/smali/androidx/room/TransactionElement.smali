.class public abstract Landroidx/room/TransactionElement;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/TransactionElement$Key;
    }
.end annotation


# static fields
.field public static final j:Landroidx/room/TransactionElement$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/room/TransactionElement$Key;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/room/TransactionElement;->j:Landroidx/room/TransactionElement$Key;

    .line 7
    .line 8
    return-void
.end method
