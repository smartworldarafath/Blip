.class public final synthetic Landroidx/compose/runtime/saveable/i;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 2
    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;-><init>(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
