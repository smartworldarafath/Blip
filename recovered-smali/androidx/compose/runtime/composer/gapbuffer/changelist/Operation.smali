.class public abstract Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$AdvanceSlotsBy;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$AppendValue;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ApplyChangeList;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$CopyNodesToNewAnchorLocation;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$CopySlotTableToAnchorLocation;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DeactivateCurrentGroup;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DetermineMovableContentNodeIndex;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$Downs;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCompositionScope;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndMovableContentPlacement;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndResumingScope;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureGroupStarted;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureRootGroupStarted;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertNodeFixup;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertSlots;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertSlotsWithFixups;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$MoveCurrentGroup;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$MoveNode;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$PostInsertNodeFixup;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$Remember;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RememberPausingScope;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RemoveCurrentGroup;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RemoveNode;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ResetSlots;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$SideEffect;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$SkipToEndOfCurrentGroup;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$StartResumingScope;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$TrimParentValues;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAnchoredValue;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAuxData;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateNode;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateValue;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$Ups;,
        Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UseCurrentNode;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->a:I

    iput p2, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->b:I

    return-void
.end method

.method public synthetic constructor <init>(III)V
    .locals 2

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p1, v1

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move p2, v1

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;-><init>(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
.end method

.method public b(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->c()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const-string p0, ""

    .line 16
    .line 17
    :cond_0
    return-object p0
.end method
