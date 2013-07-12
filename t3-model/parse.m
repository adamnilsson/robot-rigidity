function Ke = parse(folder, analysis, measures)

n_a = length(analysis)
n_m = length(measures)

data = zeros(n_m,n_a);
for k=1:n_a
    filepath = [folder , cell2mat(analysis(k)) , '\' , cell2mat(analysis(k)) , '.csv']
    col=fileread(filepath);

    rows = regexp(col,'\n','split');

    for i=1:length(rows)
        st = cell2mat(strrep(rows(i),' ',''));
        cells = regexp(st,',','split');

        match = strmatch(cells(1),measures);
        if length(match) == 1
            cells(1)
            value = str2num(cell2mat(strtrim(cells(2))))
            data(match, k) = value;
        end
    end
end
Ke = data;