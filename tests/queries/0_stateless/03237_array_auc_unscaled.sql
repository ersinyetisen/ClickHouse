select arrayAUCUnscaled([0.1, 0.4, 0.35, 0.8], [0, 0, 1, 1]);
select arrayAUCUnscaled([0.1, 0.4, 0.35, 0.8], cast([0, 0, 1, 1] as Array(Int8)));
select arrayAUCUnscaled([0.1, 0.4, 0.35, 0.8], cast([-1, -1, 1, 1] as Array(Int8)));
select arrayAUCUnscaled([0.1, 0.4, 0.35, 0.8], cast(['false', 'false', 'true', 'true'] as Array(Enum8('false' = 0, 'true' = 1))));
select arrayAUCUnscaled([0.1, 0.4, 0.35, 0.8], cast(['false', 'false', 'true', 'true'] as Array(Enum8('false' = -1, 'true' = 1))));
select arrayAUCUnscaled(cast([10, 40, 35, 80] as Array(UInt8)), [0, 0, 1, 1]);
select arrayAUCUnscaled(cast([10, 40, 35, 80] as Array(UInt16)), [0, 0, 1, 1]);
select arrayAUCUnscaled(cast([10, 40, 35, 80] as Array(UInt32)), [0, 0, 1, 1]);
select arrayAUCUnscaled(cast([10, 40, 35, 80] as Array(UInt64)), [0, 0, 1, 1]);
select arrayAUCUnscaled(cast([-10, -40, -35, -80] as Array(Int8)), [0, 0, 1, 1]);
select arrayAUCUnscaled(cast([-10, -40, -35, -80] as Array(Int16)), [0, 0, 1, 1]);
select arrayAUCUnscaled(cast([-10, -40, -35, -80] as Array(Int32)), [0, 0, 1, 1]);
select arrayAUCUnscaled(cast([-10, -40, -35, -80] as Array(Int64)), [0, 0, 1, 1]);
select arrayAUCUnscaled(cast([-0.1, -0.4, -0.35, -0.8] as Array(Float32)) , [0, 0, 1, 1]);
select arrayAUCUnscaled([0, 3, 5, 6, 7.5, 8], [1, 0, 1, 0, 0, 0]);
select arrayAUCUnscaled([0.1, 0.35, 0.4, 0.8], [1, 0, 1, 0]);
SELECT arrayAUCUnscaled([], []); -- { serverError ILLEGAL_TYPE_OF_ARGUMENT }
SELECT arrayAUCUnscaled([1], [1]);
SELECT arrayAUCUnscaled([1], []); -- { serverError ILLEGAL_TYPE_OF_ARGUMENT }
SELECT arrayAUCUnscaled([], [1]); -- { serverError ILLEGAL_TYPE_OF_ARGUMENT }
SELECT arrayAUCUnscaled([1, 2], [3]); -- { serverError BAD_ARGUMENTS }
SELECT arrayAUCUnscaled([1], [2, 3]); -- { serverError BAD_ARGUMENTS }
SELECT arrayAUCUnscaled([1, 1], [1, 1]);
SELECT arrayAUCUnscaled([1, 1], [0, 0]);
SELECT arrayAUCUnscaled([1, 1], [0, 1]);
SELECT arrayAUCUnscaled([0, 1], [0, 1]);
SELECT arrayAUCUnscaled([1, 0], [0, 1]);
SELECT arrayAUCUnscaled([0, 0, 1], [0, 1, 1]);
SELECT arrayAUCUnscaled([0, 1, 1], [0, 1, 1]);
SELECT arrayAUCUnscaled([0, 1, 1], [0, 0, 1]);
